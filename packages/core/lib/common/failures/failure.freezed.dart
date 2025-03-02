// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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
  /// Serializes this Failure to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Failure);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Failure()';
  }
}

/// @nodoc
class $FailureCopyWith<$Res> {
  $FailureCopyWith(Failure _, $Res Function(Failure) __);
}

/// @nodoc
@JsonSerializable()
class _EmptyFailure extends Failure {
  const _EmptyFailure({final String? $type})
      : $type = $type ?? 'empty',
        super._();
  factory _EmptyFailure.fromJson(Map<String, dynamic> json) =>
      _$EmptyFailureFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$EmptyFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmptyFailure);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Failure.empty()';
  }
}

/// @nodoc
@JsonSerializable()
class _UnprocessableEntityFailure extends Failure {
  const _UnprocessableEntityFailure(
      {required this.message, final String? $type})
      : $type = $type ?? 'unprocessableEntity',
        super._();
  factory _UnprocessableEntityFailure.fromJson(Map<String, dynamic> json) =>
      _$UnprocessableEntityFailureFromJson(json);

  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnprocessableEntityFailureCopyWith<_UnprocessableEntityFailure>
      get copyWith => __$UnprocessableEntityFailureCopyWithImpl<
          _UnprocessableEntityFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UnprocessableEntityFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnprocessableEntityFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.unprocessableEntity(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$UnprocessableEntityFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$UnprocessableEntityFailureCopyWith(
          _UnprocessableEntityFailure value,
          $Res Function(_UnprocessableEntityFailure) _then) =
      __$UnprocessableEntityFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$UnprocessableEntityFailureCopyWithImpl<$Res>
    implements _$UnprocessableEntityFailureCopyWith<$Res> {
  __$UnprocessableEntityFailureCopyWithImpl(this._self, this._then);

  final _UnprocessableEntityFailure _self;
  final $Res Function(_UnprocessableEntityFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_UnprocessableEntityFailure(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UnauthorizedFailure extends Failure {
  const _UnauthorizedFailure({final String? $type})
      : $type = $type ?? 'unauthorized',
        super._();
  factory _UnauthorizedFailure.fromJson(Map<String, dynamic> json) =>
      _$UnauthorizedFailureFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$UnauthorizedFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnauthorizedFailure);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Failure.unauthorized()';
  }
}

/// @nodoc
@JsonSerializable()
class _BadRequestFailure extends Failure {
  const _BadRequestFailure({final String? $type})
      : $type = $type ?? 'badRequest',
        super._();
  factory _BadRequestFailure.fromJson(Map<String, dynamic> json) =>
      _$BadRequestFailureFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$BadRequestFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BadRequestFailure);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Failure.badRequest()';
  }
}

/// @nodoc
@JsonSerializable()
class _NotFoundFailure extends Failure {
  const _NotFoundFailure({final String? $type})
      : $type = $type ?? 'notFound',
        super._();
  factory _NotFoundFailure.fromJson(Map<String, dynamic> json) =>
      _$NotFoundFailureFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$NotFoundFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotFoundFailure);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Failure.notFound()';
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkFailure extends Failure {
  const _NetworkFailure({required this.message, final String? $type})
      : $type = $type ?? 'network',
        super._();
  factory _NetworkFailure.fromJson(Map<String, dynamic> json) =>
      _$NetworkFailureFromJson(json);

  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkFailureCopyWith<_NetworkFailure> get copyWith =>
      __$NetworkFailureCopyWithImpl<_NetworkFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.network(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$NetworkFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$NetworkFailureCopyWith(
          _NetworkFailure value, $Res Function(_NetworkFailure) _then) =
      __$NetworkFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$NetworkFailureCopyWithImpl<$Res>
    implements _$NetworkFailureCopyWith<$Res> {
  __$NetworkFailureCopyWithImpl(this._self, this._then);

  final _NetworkFailure _self;
  final $Res Function(_NetworkFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_NetworkFailure(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StorageFailure extends Failure {
  const _StorageFailure(this.message, {final String? $type})
      : $type = $type ?? 'storage',
        super._();
  factory _StorageFailure.fromJson(Map<String, dynamic> json) =>
      _$StorageFailureFromJson(json);

  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StorageFailureCopyWith<_StorageFailure> get copyWith =>
      __$StorageFailureCopyWithImpl<_StorageFailure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StorageFailureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StorageFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'Failure.storage(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$StorageFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$StorageFailureCopyWith(
          _StorageFailure value, $Res Function(_StorageFailure) _then) =
      __$StorageFailureCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$StorageFailureCopyWithImpl<$Res>
    implements _$StorageFailureCopyWith<$Res> {
  __$StorageFailureCopyWithImpl(this._self, this._then);

  final _StorageFailure _self;
  final $Res Function(_StorageFailure) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_StorageFailure(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
