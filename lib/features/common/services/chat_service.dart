import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';

import 'package:firefit/features/common/domain/chat_completion_message.dart';

class ChatService {
  final Dio _dio;
  final _streamController = StreamController<String>.broadcast();
  StreamSubscription? _activeSubscription;
  final String deploymentName;
  String _buffer = '';
  final _codec = utf8.fuse(base64);

  ChatService({
    required String apiKey,
    required String baseUrl,
    required this.deploymentName,
    required String apiVersion,
  }) : _dio = Dio(BaseOptions(
          baseUrl: '$baseUrl/openai/deployments/$deploymentName',
          headers: {
            'api-key': apiKey,
            'Content-Type': 'application/json',
          },
          queryParameters: {
            'api-version': apiVersion,
          },
        ));

  Stream<String> streamChat(List<ChatCompletionMessage> messages) async* {
    await _activeSubscription?.cancel();

    try {
      final response = await _dio.post(
        '/chat/completions',
        data: {
          'messages': messages
              .map((message) => {
                    'role': message.role,
                    'content': message.content,
                  })
              .toList(),
          'model': deploymentName,
          'stream': true,
        },
        options: Options(
          responseType: ResponseType.stream,
        ),
      );

      final Stream<Uint8List> byteStream = response.data.stream;
      await for (final chunk in byteStream
          .transform(StreamTransformer<Uint8List, String>.fromHandlers(
        handleData: (data, sink) {
          final String text = String.fromCharCodes(data as Iterable<int>);
          if (text.startsWith('data: ')) {
            final content = _parseSSEData(text);
            if (content.isNotEmpty) {
              sink.add(content);
            }
          }
        },
      ))) {
        _streamController.add(chunk);
        yield chunk;
      }
    } catch (e) {
      _streamController.addError('Error: $e');
      rethrow;
    }
  }

  String _parseSSEData(String data) {
    try {
      final decodedData = _codec.decode(_codec.encode(data));
      _buffer += decodedData;

      String combinedContent = '';
      final lines = _buffer.split('\n');
      _buffer = lines.last.startsWith('data: ') ? lines.removeLast() : '';

      final blocks = lines
          .where((line) => line.startsWith('data: '))
          .map((line) => line.replaceFirst('data: ', '').trim())
          .where((line) => line.isNotEmpty);

      for (final jsonStr in blocks) {
        if (jsonStr == '[DONE]') continue;

        try {
          final Map<String, dynamic> json = jsonDecode(jsonStr);
          final choices = json['choices'] as List;
          if (choices.isEmpty) continue;

          final content = choices[0]['delta']['content'];
          if (content != null) {
            combinedContent += _codec.decode(_codec.encode(content));
          }
        } catch (e) {
          continue;
        }
      }

      return combinedContent;
    } catch (e) {
      return '';
    }
  }

  void dispose() {
    _activeSubscription?.cancel();
    _streamController.close();
    _dio.close();
  }
}
