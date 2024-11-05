import 'package:freezed_annotation/freezed_annotation.dart';

part 'openai.freezed.dart';
part 'openai.g.dart';

@freezed
class OpenAIStreamChatCompletionResponse
    with _$OpenAIStreamChatCompletionResponse {
  const factory OpenAIStreamChatCompletionResponse({
    required String id,
    required List<OpenAIStreamChatCompletionChoice> choices,
    required int created,
    required String model,
    required String object,
  }) = _OpenAIStreamChatCompletionResponse;

  factory OpenAIStreamChatCompletionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIStreamChatCompletionResponseFromJson(json);
}

@freezed
class OpenAIStreamChatCompletionChoice with _$OpenAIStreamChatCompletionChoice {
  const factory OpenAIStreamChatCompletionChoice({
    required int index,
    required OpenAIChatCompletionChoiceDelta delta,
    String? finishReason,
  }) = _OpenAIStreamChatCompletionChoice;

  factory OpenAIStreamChatCompletionChoice.fromJson(
          Map<String, dynamic> json) =>
      _$OpenAIStreamChatCompletionChoiceFromJson(json);
}

@freezed
class OpenAIChatCompletionChoiceDelta with _$OpenAIChatCompletionChoiceDelta {
  const factory OpenAIChatCompletionChoiceDelta({
    required String content,
    required String role,
  }) = _OpenAIChatCompletionChoiceDelta;

  factory OpenAIChatCompletionChoiceDelta.fromJson(Map<String, dynamic> json) =>
      _$OpenAIChatCompletionChoiceDeltaFromJson(json);
}
