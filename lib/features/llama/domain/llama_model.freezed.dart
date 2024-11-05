// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'llama_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LlamaModel _$LlamaModelFromJson(Map<String, dynamic> json) {
  return _LlamaModel.fromJson(json);
}

/// @nodoc
mixin _$LlamaModel {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDownloaded => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isDownloading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  double? get downloadProgress => throw _privateConstructorUsedError;
  double? get loadProgress => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get modelPath => throw _privateConstructorUsedError;

  /// Serializes this LlamaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LlamaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LlamaModelCopyWith<LlamaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LlamaModelCopyWith<$Res> {
  factory $LlamaModelCopyWith(
          LlamaModel value, $Res Function(LlamaModel) then) =
      _$LlamaModelCopyWithImpl<$Res, LlamaModel>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isDownloaded,
      bool isLoaded,
      bool isDownloading,
      String? error,
      double? downloadProgress,
      double? loadProgress,
      String? model,
      String? modelPath});
}

/// @nodoc
class _$LlamaModelCopyWithImpl<$Res, $Val extends LlamaModel>
    implements $LlamaModelCopyWith<$Res> {
  _$LlamaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LlamaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isDownloaded = null,
    Object? isLoaded = null,
    Object? isDownloading = null,
    Object? error = freezed,
    Object? downloadProgress = freezed,
    Object? loadProgress = freezed,
    Object? model = freezed,
    Object? modelPath = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloaded: null == isDownloaded
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloading: null == isDownloading
          ? _value.isDownloading
          : isDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadProgress: freezed == downloadProgress
          ? _value.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      loadProgress: freezed == loadProgress
          ? _value.loadProgress
          : loadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      modelPath: freezed == modelPath
          ? _value.modelPath
          : modelPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LlamaModelImplCopyWith<$Res>
    implements $LlamaModelCopyWith<$Res> {
  factory _$$LlamaModelImplCopyWith(
          _$LlamaModelImpl value, $Res Function(_$LlamaModelImpl) then) =
      __$$LlamaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isDownloaded,
      bool isLoaded,
      bool isDownloading,
      String? error,
      double? downloadProgress,
      double? loadProgress,
      String? model,
      String? modelPath});
}

/// @nodoc
class __$$LlamaModelImplCopyWithImpl<$Res>
    extends _$LlamaModelCopyWithImpl<$Res, _$LlamaModelImpl>
    implements _$$LlamaModelImplCopyWith<$Res> {
  __$$LlamaModelImplCopyWithImpl(
      _$LlamaModelImpl _value, $Res Function(_$LlamaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LlamaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isDownloaded = null,
    Object? isLoaded = null,
    Object? isDownloading = null,
    Object? error = freezed,
    Object? downloadProgress = freezed,
    Object? loadProgress = freezed,
    Object? model = freezed,
    Object? modelPath = freezed,
  }) {
    return _then(_$LlamaModelImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloaded: null == isDownloaded
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isDownloading: null == isDownloading
          ? _value.isDownloading
          : isDownloading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadProgress: freezed == downloadProgress
          ? _value.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      loadProgress: freezed == loadProgress
          ? _value.loadProgress
          : loadProgress // ignore: cast_nullable_to_non_nullable
              as double?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      modelPath: freezed == modelPath
          ? _value.modelPath
          : modelPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LlamaModelImpl implements _LlamaModel {
  const _$LlamaModelImpl(
      {required this.isLoading,
      required this.isDownloaded,
      required this.isLoaded,
      required this.isDownloading,
      this.error,
      this.downloadProgress,
      this.loadProgress,
      this.model,
      this.modelPath});

  factory _$LlamaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LlamaModelImplFromJson(json);

  @override
  final bool isLoading;
  @override
  final bool isDownloaded;
  @override
  final bool isLoaded;
  @override
  final bool isDownloading;
  @override
  final String? error;
  @override
  final double? downloadProgress;
  @override
  final double? loadProgress;
  @override
  final String? model;
  @override
  final String? modelPath;

  @override
  String toString() {
    return 'LlamaModel(isLoading: $isLoading, isDownloaded: $isDownloaded, isLoaded: $isLoaded, isDownloading: $isDownloading, error: $error, downloadProgress: $downloadProgress, loadProgress: $loadProgress, model: $model, modelPath: $modelPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LlamaModelImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDownloaded, isDownloaded) ||
                other.isDownloaded == isDownloaded) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isDownloading, isDownloading) ||
                other.isDownloading == isDownloading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.downloadProgress, downloadProgress) ||
                other.downloadProgress == downloadProgress) &&
            (identical(other.loadProgress, loadProgress) ||
                other.loadProgress == loadProgress) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.modelPath, modelPath) ||
                other.modelPath == modelPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isDownloaded,
      isLoaded,
      isDownloading,
      error,
      downloadProgress,
      loadProgress,
      model,
      modelPath);

  /// Create a copy of LlamaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LlamaModelImplCopyWith<_$LlamaModelImpl> get copyWith =>
      __$$LlamaModelImplCopyWithImpl<_$LlamaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LlamaModelImplToJson(
      this,
    );
  }
}

abstract class _LlamaModel implements LlamaModel {
  const factory _LlamaModel(
      {required final bool isLoading,
      required final bool isDownloaded,
      required final bool isLoaded,
      required final bool isDownloading,
      final String? error,
      final double? downloadProgress,
      final double? loadProgress,
      final String? model,
      final String? modelPath}) = _$LlamaModelImpl;

  factory _LlamaModel.fromJson(Map<String, dynamic> json) =
      _$LlamaModelImpl.fromJson;

  @override
  bool get isLoading;
  @override
  bool get isDownloaded;
  @override
  bool get isLoaded;
  @override
  bool get isDownloading;
  @override
  String? get error;
  @override
  double? get downloadProgress;
  @override
  double? get loadProgress;
  @override
  String? get model;
  @override
  String? get modelPath;

  /// Create a copy of LlamaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LlamaModelImplCopyWith<_$LlamaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
