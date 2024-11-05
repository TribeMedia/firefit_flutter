// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'llama_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LlamaModelImpl _$$LlamaModelImplFromJson(Map<String, dynamic> json) =>
    _$LlamaModelImpl(
      isLoading: json['isLoading'] as bool,
      isDownloaded: json['isDownloaded'] as bool,
      isLoaded: json['isLoaded'] as bool,
      isDownloading: json['isDownloading'] as bool,
      error: json['error'] as String?,
      downloadProgress: (json['downloadProgress'] as num?)?.toDouble(),
      loadProgress: (json['loadProgress'] as num?)?.toDouble(),
      model: json['model'] as String?,
      modelPath: json['modelPath'] as String?,
    );

Map<String, dynamic> _$$LlamaModelImplToJson(_$LlamaModelImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'isDownloaded': instance.isDownloaded,
      'isLoaded': instance.isLoaded,
      'isDownloading': instance.isDownloading,
      'error': instance.error,
      'downloadProgress': instance.downloadProgress,
      'loadProgress': instance.loadProgress,
      'model': instance.model,
      'modelPath': instance.modelPath,
    };
