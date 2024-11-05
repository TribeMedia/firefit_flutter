// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Failure _$FailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'empty':
      return _EmptyFailure.fromJson(json);
    case 'unprocessableEntity':
      return _UnprocessableEntityFailure.fromJson(json);
    case 'unauthorized':
      return _UnauthorizedFailure.fromJson(json);
    case 'badRequest':
      return _BadRequestFailure.fromJson(json);
    case 'notFound':
      return _NotFoundFailure.fromJson(json);
    case 'network':
      return _NetworkFailure.fromJson(json);
    case 'storage':
      return _StorageFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Failure',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
    required TResult Function() notFound,
    required TResult Function(String message) network,
    required TResult Function(String message) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
    TResult? Function()? notFound,
    TResult? Function(String message)? network,
    TResult? Function(String message)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    TResult Function()? notFound,
    TResult Function(String message)? network,
    TResult Function(String message)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFailure value) empty,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntity,
    required TResult Function(_UnauthorizedFailure value) unauthorized,
    required TResult Function(_BadRequestFailure value) badRequest,
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyFailure value)? empty,
    TResult? Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult? Function(_UnauthorizedFailure value)? unauthorized,
    TResult? Function(_BadRequestFailure value)? badRequest,
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFailure value)? empty,
    TResult Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult Function(_UnauthorizedFailure value)? unauthorized,
    TResult Function(_BadRequestFailure value)? badRequest,
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Failure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmptyFailureImplCopyWith<$Res> {
  factory _$$EmptyFailureImplCopyWith(
          _$EmptyFailureImpl value, $Res Function(_$EmptyFailureImpl) then) =
      __$$EmptyFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$EmptyFailureImpl>
    implements _$$EmptyFailureImplCopyWith<$Res> {
  __$$EmptyFailureImplCopyWithImpl(
      _$EmptyFailureImpl _value, $Res Function(_$EmptyFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EmptyFailureImpl extends _EmptyFailure {
  const _$EmptyFailureImpl({final String? $type})
      : $type = $type ?? 'empty',
        super._();

  factory _$EmptyFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyFailureImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyFailureImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
    required TResult Function() notFound,
    required TResult Function(String message) network,
    required TResult Function(String message) storage,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
    TResult? Function()? notFound,
    TResult? Function(String message)? network,
    TResult? Function(String message)? storage,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    TResult Function()? notFound,
    TResult Function(String message)? network,
    TResult Function(String message)? storage,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFailure value) empty,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntity,
    required TResult Function(_UnauthorizedFailure value) unauthorized,
    required TResult Function(_BadRequestFailure value) badRequest,
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyFailure value)? empty,
    TResult? Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult? Function(_UnauthorizedFailure value)? unauthorized,
    TResult? Function(_BadRequestFailure value)? badRequest,
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFailure value)? empty,
    TResult Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult Function(_UnauthorizedFailure value)? unauthorized,
    TResult Function(_BadRequestFailure value)? badRequest,
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyFailureImplToJson(
      this,
    );
  }
}

abstract class _EmptyFailure extends Failure {
  const factory _EmptyFailure() = _$EmptyFailureImpl;
  const _EmptyFailure._() : super._();

  factory _EmptyFailure.fromJson(Map<String, dynamic> json) =
      _$EmptyFailureImpl.fromJson;
}

/// @nodoc
abstract class _$$UnprocessableEntityFailureImplCopyWith<$Res> {
  factory _$$UnprocessableEntityFailureImplCopyWith(
          _$UnprocessableEntityFailureImpl value,
          $Res Function(_$UnprocessableEntityFailureImpl) then) =
      __$$UnprocessableEntityFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnprocessableEntityFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnprocessableEntityFailureImpl>
    implements _$$UnprocessableEntityFailureImplCopyWith<$Res> {
  __$$UnprocessableEntityFailureImplCopyWithImpl(
      _$UnprocessableEntityFailureImpl _value,
      $Res Function(_$UnprocessableEntityFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnprocessableEntityFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnprocessableEntityFailureImpl extends _UnprocessableEntityFailure {
  const _$UnprocessableEntityFailureImpl(
      {required this.message, final String? $type})
      : $type = $type ?? 'unprocessableEntity',
        super._();

  factory _$UnprocessableEntityFailureImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnprocessableEntityFailureImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.unprocessableEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnprocessableEntityFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnprocessableEntityFailureImplCopyWith<_$UnprocessableEntityFailureImpl>
      get copyWith => __$$UnprocessableEntityFailureImplCopyWithImpl<
          _$UnprocessableEntityFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
    required TResult Function() notFound,
    required TResult Function(String message) network,
    required TResult Function(String message) storage,
  }) {
    return unprocessableEntity(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
    TResult? Function()? notFound,
    TResult? Function(String message)? network,
    TResult? Function(String message)? storage,
  }) {
    return unprocessableEntity?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    TResult Function()? notFound,
    TResult Function(String message)? network,
    TResult Function(String message)? storage,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFailure value) empty,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntity,
    required TResult Function(_UnauthorizedFailure value) unauthorized,
    required TResult Function(_BadRequestFailure value) badRequest,
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
  }) {
    return unprocessableEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyFailure value)? empty,
    TResult? Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult? Function(_UnauthorizedFailure value)? unauthorized,
    TResult? Function(_BadRequestFailure value)? badRequest,
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
  }) {
    return unprocessableEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFailure value)? empty,
    TResult Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult Function(_UnauthorizedFailure value)? unauthorized,
    TResult Function(_BadRequestFailure value)? badRequest,
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnprocessableEntityFailureImplToJson(
      this,
    );
  }
}

abstract class _UnprocessableEntityFailure extends Failure {
  const factory _UnprocessableEntityFailure({required final String message}) =
      _$UnprocessableEntityFailureImpl;
  const _UnprocessableEntityFailure._() : super._();

  factory _UnprocessableEntityFailure.fromJson(Map<String, dynamic> json) =
      _$UnprocessableEntityFailureImpl.fromJson;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnprocessableEntityFailureImplCopyWith<_$UnprocessableEntityFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedFailureImplCopyWith<$Res> {
  factory _$$UnauthorizedFailureImplCopyWith(_$UnauthorizedFailureImpl value,
          $Res Function(_$UnauthorizedFailureImpl) then) =
      __$$UnauthorizedFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedFailureImpl>
    implements _$$UnauthorizedFailureImplCopyWith<$Res> {
  __$$UnauthorizedFailureImplCopyWithImpl(_$UnauthorizedFailureImpl _value,
      $Res Function(_$UnauthorizedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$UnauthorizedFailureImpl extends _UnauthorizedFailure {
  const _$UnauthorizedFailureImpl({final String? $type})
      : $type = $type ?? 'unauthorized',
        super._();

  factory _$UnauthorizedFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnauthorizedFailureImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedFailureImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
    required TResult Function() notFound,
    required TResult Function(String message) network,
    required TResult Function(String message) storage,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
    TResult? Function()? notFound,
    TResult? Function(String message)? network,
    TResult? Function(String message)? storage,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    TResult Function()? notFound,
    TResult Function(String message)? network,
    TResult Function(String message)? storage,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFailure value) empty,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntity,
    required TResult Function(_UnauthorizedFailure value) unauthorized,
    required TResult Function(_BadRequestFailure value) badRequest,
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyFailure value)? empty,
    TResult? Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult? Function(_UnauthorizedFailure value)? unauthorized,
    TResult? Function(_BadRequestFailure value)? badRequest,
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFailure value)? empty,
    TResult Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult Function(_UnauthorizedFailure value)? unauthorized,
    TResult Function(_BadRequestFailure value)? badRequest,
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnauthorizedFailureImplToJson(
      this,
    );
  }
}

abstract class _UnauthorizedFailure extends Failure {
  const factory _UnauthorizedFailure() = _$UnauthorizedFailureImpl;
  const _UnauthorizedFailure._() : super._();

  factory _UnauthorizedFailure.fromJson(Map<String, dynamic> json) =
      _$UnauthorizedFailureImpl.fromJson;
}

/// @nodoc
abstract class _$$BadRequestFailureImplCopyWith<$Res> {
  factory _$$BadRequestFailureImplCopyWith(_$BadRequestFailureImpl value,
          $Res Function(_$BadRequestFailureImpl) then) =
      __$$BadRequestFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadRequestFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BadRequestFailureImpl>
    implements _$$BadRequestFailureImplCopyWith<$Res> {
  __$$BadRequestFailureImplCopyWithImpl(_$BadRequestFailureImpl _value,
      $Res Function(_$BadRequestFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BadRequestFailureImpl extends _BadRequestFailure {
  const _$BadRequestFailureImpl({final String? $type})
      : $type = $type ?? 'badRequest',
        super._();

  factory _$BadRequestFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadRequestFailureImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.badRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadRequestFailureImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
    required TResult Function() notFound,
    required TResult Function(String message) network,
    required TResult Function(String message) storage,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
    TResult? Function()? notFound,
    TResult? Function(String message)? network,
    TResult? Function(String message)? storage,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    TResult Function()? notFound,
    TResult Function(String message)? network,
    TResult Function(String message)? storage,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFailure value) empty,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntity,
    required TResult Function(_UnauthorizedFailure value) unauthorized,
    required TResult Function(_BadRequestFailure value) badRequest,
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyFailure value)? empty,
    TResult? Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult? Function(_UnauthorizedFailure value)? unauthorized,
    TResult? Function(_BadRequestFailure value)? badRequest,
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFailure value)? empty,
    TResult Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult Function(_UnauthorizedFailure value)? unauthorized,
    TResult Function(_BadRequestFailure value)? badRequest,
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BadRequestFailureImplToJson(
      this,
    );
  }
}

abstract class _BadRequestFailure extends Failure {
  const factory _BadRequestFailure() = _$BadRequestFailureImpl;
  const _BadRequestFailure._() : super._();

  factory _BadRequestFailure.fromJson(Map<String, dynamic> json) =
      _$BadRequestFailureImpl.fromJson;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(_$NotFoundFailureImpl value,
          $Res Function(_$NotFoundFailureImpl) then) =
      __$$NotFoundFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
      _$NotFoundFailureImpl _value, $Res Function(_$NotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NotFoundFailureImpl extends _NotFoundFailure {
  const _$NotFoundFailureImpl({final String? $type})
      : $type = $type ?? 'notFound',
        super._();

  factory _$NotFoundFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotFoundFailureImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundFailureImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
    required TResult Function() notFound,
    required TResult Function(String message) network,
    required TResult Function(String message) storage,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
    TResult? Function()? notFound,
    TResult? Function(String message)? network,
    TResult? Function(String message)? storage,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    TResult Function()? notFound,
    TResult Function(String message)? network,
    TResult Function(String message)? storage,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFailure value) empty,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntity,
    required TResult Function(_UnauthorizedFailure value) unauthorized,
    required TResult Function(_BadRequestFailure value) badRequest,
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyFailure value)? empty,
    TResult? Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult? Function(_UnauthorizedFailure value)? unauthorized,
    TResult? Function(_BadRequestFailure value)? badRequest,
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFailure value)? empty,
    TResult Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult Function(_UnauthorizedFailure value)? unauthorized,
    TResult Function(_BadRequestFailure value)? badRequest,
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotFoundFailureImplToJson(
      this,
    );
  }
}

abstract class _NotFoundFailure extends Failure {
  const factory _NotFoundFailure() = _$NotFoundFailureImpl;
  const _NotFoundFailure._() : super._();

  factory _NotFoundFailure.fromJson(Map<String, dynamic> json) =
      _$NotFoundFailureImpl.fromJson;
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NetworkFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkFailureImpl extends _NetworkFailure {
  const _$NetworkFailureImpl({required this.message, final String? $type})
      : $type = $type ?? 'network',
        super._();

  factory _$NetworkFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkFailureImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.network(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
    required TResult Function() notFound,
    required TResult Function(String message) network,
    required TResult Function(String message) storage,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
    TResult? Function()? notFound,
    TResult? Function(String message)? network,
    TResult? Function(String message)? storage,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    TResult Function()? notFound,
    TResult Function(String message)? network,
    TResult Function(String message)? storage,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFailure value) empty,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntity,
    required TResult Function(_UnauthorizedFailure value) unauthorized,
    required TResult Function(_BadRequestFailure value) badRequest,
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyFailure value)? empty,
    TResult? Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult? Function(_UnauthorizedFailure value)? unauthorized,
    TResult? Function(_BadRequestFailure value)? badRequest,
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFailure value)? empty,
    TResult Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult Function(_UnauthorizedFailure value)? unauthorized,
    TResult Function(_BadRequestFailure value)? badRequest,
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkFailureImplToJson(
      this,
    );
  }
}

abstract class _NetworkFailure extends Failure {
  const factory _NetworkFailure({required final String message}) =
      _$NetworkFailureImpl;
  const _NetworkFailure._() : super._();

  factory _NetworkFailure.fromJson(Map<String, dynamic> json) =
      _$NetworkFailureImpl.fromJson;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageFailureImplCopyWith<$Res> {
  factory _$$StorageFailureImplCopyWith(_$StorageFailureImpl value,
          $Res Function(_$StorageFailureImpl) then) =
      __$$StorageFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StorageFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$StorageFailureImpl>
    implements _$$StorageFailureImplCopyWith<$Res> {
  __$$StorageFailureImplCopyWithImpl(
      _$StorageFailureImpl _value, $Res Function(_$StorageFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StorageFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageFailureImpl extends _StorageFailure {
  const _$StorageFailureImpl(this.message, {final String? $type})
      : $type = $type ?? 'storage',
        super._();

  factory _$StorageFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageFailureImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Failure.storage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      __$$StorageFailureImplCopyWithImpl<_$StorageFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(String message) unprocessableEntity,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
    required TResult Function() notFound,
    required TResult Function(String message) network,
    required TResult Function(String message) storage,
  }) {
    return storage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function(String message)? unprocessableEntity,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
    TResult? Function()? notFound,
    TResult? Function(String message)? network,
    TResult? Function(String message)? storage,
  }) {
    return storage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(String message)? unprocessableEntity,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    TResult Function()? notFound,
    TResult Function(String message)? network,
    TResult Function(String message)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyFailure value) empty,
    required TResult Function(_UnprocessableEntityFailure value)
        unprocessableEntity,
    required TResult Function(_UnauthorizedFailure value) unauthorized,
    required TResult Function(_BadRequestFailure value) badRequest,
    required TResult Function(_NotFoundFailure value) notFound,
    required TResult Function(_NetworkFailure value) network,
    required TResult Function(_StorageFailure value) storage,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyFailure value)? empty,
    TResult? Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult? Function(_UnauthorizedFailure value)? unauthorized,
    TResult? Function(_BadRequestFailure value)? badRequest,
    TResult? Function(_NotFoundFailure value)? notFound,
    TResult? Function(_NetworkFailure value)? network,
    TResult? Function(_StorageFailure value)? storage,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyFailure value)? empty,
    TResult Function(_UnprocessableEntityFailure value)? unprocessableEntity,
    TResult Function(_UnauthorizedFailure value)? unauthorized,
    TResult Function(_BadRequestFailure value)? badRequest,
    TResult Function(_NotFoundFailure value)? notFound,
    TResult Function(_NetworkFailure value)? network,
    TResult Function(_StorageFailure value)? storage,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageFailureImplToJson(
      this,
    );
  }
}

abstract class _StorageFailure extends Failure {
  const factory _StorageFailure(final String message) = _$StorageFailureImpl;
  const _StorageFailure._() : super._();

  factory _StorageFailure.fromJson(Map<String, dynamic> json) =
      _$StorageFailureImpl.fromJson;

  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageFailureImplCopyWith<_$StorageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
