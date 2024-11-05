/*import 'dart:io';
import 'dart:isolate';

import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/common/domain/openai.dart';
import 'package:firefit/features/llama/domain/llama_model.dart';
import 'package:fllama/fllama.dart';
import 'package:fpdart/fpdart.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

typedef ModelCallback = void Function(double progress);

class _StreamParams {
  final OpenAiRequest request;
  final SendPort sendPort;

  _StreamParams({required this.request, required this.sendPort});
}

class LlamaNotifier extends AsyncNotifier<LlamaModel> {
  @override
  Future<LlamaModel> build() async {
    final filePath =
        await getLlamaFilePath(Env.llamaDefaultRepo, Env.llamaDefaultFilename);
    if (await File(filePath).exists()) {
      state = AsyncValue.data(LlamaModel(
          isLoading: false,
          isDownloaded: true,
          isLoaded: true,
          isDownloading: false,
          model: Env.llamaDefaultModel,
          modelPath: filePath)); // Add modelPath here
      return state.value!;
    }
    state = AsyncValue.data(LlamaModel(
        isLoading: true,
        isDownloaded: false,
        isLoaded: false,
        isDownloading: false,
        model: Env.llamaDefaultModel,
        modelPath: filePath)); // Add modelPath here

    final downloadResult = await downloadModel(
        model: Env.llamaDefaultModel,
        filename: Env.llamaDefaultFilename,
        callback: (progress) {
          state = AsyncValue.data(state.value!.copyWith(
            isDownloading: true,
            downloadProgress: progress,
          ));
        });

    downloadResult.fold(
        (l) => state = AsyncValue.error(l, StackTrace.current),
        (r) => state = AsyncValue.data(state.value!.copyWith(
            isDownloading: false, isDownloaded: true, isLoaded: true)));
    return state.value!;
  }

  Stream<OpenAIStreamChatCompletionResponse> stream(
      OpenAiRequest request) async* {
    final buffer = StringBuffer();
    final modelPath = state.value!.modelPath!;
    final adjustedRequest = OpenAiRequest(
      modelPath: modelPath,
      messages: request.messages,
      tools: request.tools,
      maxTokens: request.maxTokens,
      temperature: request.temperature,
      topP: request.topP,
      frequencyPenalty: request.frequencyPenalty,
      presencePenalty: request.presencePenalty,
    );

    final receivePort = ReceivePort();
    await Isolate.spawn(
      _inferenceIsolate,
      _StreamParams(request: adjustedRequest, sendPort: receivePort.sendPort),
    );

    await for (final message in receivePort) {
      if (message is String) {
        buffer.write(message);
        state = AsyncValue.data(state.value!.copyWith(
          loadProgress: buffer.length / request.maxTokens,
          isLoading: true,
        ));

        yield OpenAIStreamChatCompletionResponse(
          id: 'llama-${DateTime.now().millisecondsSinceEpoch}',
          choices: [
            OpenAIStreamChatCompletionChoice(
              index: 0,
              delta: OpenAIChatCompletionChoiceDelta(
                content: message,
                role: 'assistant',
              ),
              finishReason: null,
            ),
          ],
          created: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          model: state.value!.model!,
          object: 'chat.completion.chunk',
        );
      } else if (message == null) {
        // Inference complete
        yield OpenAIStreamChatCompletionResponse(
          id: 'llama-${DateTime.now().millisecondsSinceEpoch}',
          choices: [
            OpenAIStreamChatCompletionChoice(
              index: 0,
              delta: const OpenAIChatCompletionChoiceDelta(
                content: '',
                role: 'assistant',
              ),
              finishReason: 'stop',
            ),
          ],
          created: DateTime.now().millisecondsSinceEpoch ~/ 1000,
          model: state.value!.model!,
          object: 'chat.completion.chunk',
        );

        state = AsyncValue.data(state.value!.copyWith(
          loadProgress: 1.0,
          isLoading: false,
        ));
      }
    }
  }
}

void _inferenceIsolate(_StreamParams params) async {
  await fllamaChat(params.request, (content, done) {
    params.sendPort.send(content);
    if (done) {
      params.sendPort.send(null); // Signal completion
    }
  });
}

String getHuggingFaceUrl(
    {required String repoId,
    required String filename,
    String? revision,
    String? subfolder}) {
// Default values
  const String defaultEndpoint = 'https://huggingface.co';
  const String defaultRevision = 'main';

// Ensure the revision and subfolder are not null and are URI encoded
  final String encodedRevision =
      Uri.encodeComponent(revision ?? defaultRevision);
  final String encodedFilename = Uri.encodeComponent(filename);
  final String? encodedSubfolder =
      subfolder != null ? Uri.encodeComponent(subfolder) : null;

// Handle subfolder if provided
  final String fullPath = encodedSubfolder != null
      ? '$encodedSubfolder/$encodedFilename'
      : encodedFilename;

// Construct the URL
  final String url =
      '$defaultEndpoint/$repoId/resolve/$encodedRevision/$fullPath';

  return url;
}

final llamaProvider = AsyncNotifierProvider<LlamaNotifier, LlamaModel>(() {
  return LlamaNotifier();
});

Future<String> getLlamaFilePath(String model, String filename) async {
  // Get the application documents directory
  final appDir = await getApplicationDocumentsDirectory();
  final modelsDir = Directory('${appDir.path}/models');
  await modelsDir.create(recursive: true);
  final filePath = '${modelsDir.path}/$filename';
  return filePath;
}

Future<Either<Failure, String>> downloadModel({
  required String model,
  required String filename,
  required ModelCallback callback,
}) async {
  final filePath = await getLlamaFilePath(model, filename);
  // Check if file already exists
  if (await File(filePath).exists()) {
    return right(filePath);
  }

  // Create a receive port for isolate communication
  final receivePort = ReceivePort();

  await Isolate.spawn(
    _downloadInIsolate,
    _DownloadParams(
      url: getHuggingFaceUrl(repoId: model, filename: filename),
      filePath: filePath,
      sendPort: receivePort.sendPort,
    ),
  );

  // Listen for progress updates and completion
  await for (final message in receivePort) {
    if (message is double) {
      callback(message);
    } else if (message is String) {
      return right(message); // Returns the file path when complete
    }
  }

  return left(Failure.network(message: 'Download failed'));
}

// Parameters class for isolate
class _DownloadParams {
  final String url;
  final String filePath;
  final SendPort sendPort;

  _DownloadParams({
    required this.url,
    required this.filePath,
    required this.sendPort,
  });
}

// Isolate download function
void _downloadInIsolate(_DownloadParams params) async {
  final dio = Dio();
  try {
    await dio.download(
      params.url,
      params.filePath,
      onReceiveProgress: (received, total) {
        if (total != -1) {
          params.sendPort.send(received / total);
        }
      },
    );
    params.sendPort.send(params.filePath);
  } catch (e) {
    params.sendPort.send(null);
  }
}
*/

