// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'openai.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenAIStreamChatCompletionResponseImpl
    _$$OpenAIStreamChatCompletionResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$OpenAIStreamChatCompletionResponseImpl(
          id: json['id'] as String,
          choices: (json['choices'] as List<dynamic>)
              .map((e) => OpenAIStreamChatCompletionChoice.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          created: (json['created'] as num).toInt(),
          model: json['model'] as String,
          object: json['object'] as String,
        );

Map<String, dynamic> _$$OpenAIStreamChatCompletionResponseImplToJson(
        _$OpenAIStreamChatCompletionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'created': instance.created,
      'model': instance.model,
      'object': instance.object,
    };

_$OpenAIStreamChatCompletionChoiceImpl
    _$$OpenAIStreamChatCompletionChoiceImplFromJson(
            Map<String, dynamic> json) =>
        _$OpenAIStreamChatCompletionChoiceImpl(
          index: (json['index'] as num).toInt(),
          delta: OpenAIChatCompletionChoiceDelta.fromJson(
              json['delta'] as Map<String, dynamic>),
          finishReason: json['finishReason'] as String?,
        );

Map<String, dynamic> _$$OpenAIStreamChatCompletionChoiceImplToJson(
        _$OpenAIStreamChatCompletionChoiceImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'delta': instance.delta.toJson(),
      'finishReason': instance.finishReason,
    };

_$OpenAIChatCompletionChoiceDeltaImpl
    _$$OpenAIChatCompletionChoiceDeltaImplFromJson(Map<String, dynamic> json) =>
        _$OpenAIChatCompletionChoiceDeltaImpl(
          content: json['content'] as String,
          role: json['role'] as String,
        );

Map<String, dynamic> _$$OpenAIChatCompletionChoiceDeltaImplToJson(
        _$OpenAIChatCompletionChoiceDeltaImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'role': instance.role,
    };
