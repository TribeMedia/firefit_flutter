import 'package:freezed_annotation/freezed_annotation.dart';

part 'llama_model.freezed.dart';
part 'llama_model.g.dart';

@freezed
class LlamaModel with _$LlamaModel {
  const factory LlamaModel({
    required bool isLoading,
    required bool isDownloaded,
    required bool isLoaded,
    required bool isDownloading,
    String? error,
    double? downloadProgress,
    double? loadProgress,
    String? model,
    String? modelPath, // Ensure modelPath is included
  }) = _LlamaModel;

  factory LlamaModel.fromJson(Map<String, dynamic> json) =>
      _$LlamaModelFromJson(json);
}
