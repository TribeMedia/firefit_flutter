// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openai.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenAIStreamChatCompletionResponse _$OpenAIStreamChatCompletionResponseFromJson(
    Map<String, dynamic> json) {
  return _OpenAIStreamChatCompletionResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenAIStreamChatCompletionResponse {
  String get id => throw _privateConstructorUsedError;
  List<OpenAIStreamChatCompletionChoice> get choices =>
      throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;

  /// Serializes this OpenAIStreamChatCompletionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenAIStreamChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenAIStreamChatCompletionResponseCopyWith<
          OpenAIStreamChatCompletionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAIStreamChatCompletionResponseCopyWith<$Res> {
  factory $OpenAIStreamChatCompletionResponseCopyWith(
          OpenAIStreamChatCompletionResponse value,
          $Res Function(OpenAIStreamChatCompletionResponse) then) =
      _$OpenAIStreamChatCompletionResponseCopyWithImpl<$Res,
          OpenAIStreamChatCompletionResponse>;
  @useResult
  $Res call(
      {String id,
      List<OpenAIStreamChatCompletionChoice> choices,
      int created,
      String model,
      String object});
}

/// @nodoc
class _$OpenAIStreamChatCompletionResponseCopyWithImpl<$Res,
        $Val extends OpenAIStreamChatCompletionResponse>
    implements $OpenAIStreamChatCompletionResponseCopyWith<$Res> {
  _$OpenAIStreamChatCompletionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenAIStreamChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choices = null,
    Object? created = null,
    Object? model = null,
    Object? object = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<OpenAIStreamChatCompletionChoice>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenAIStreamChatCompletionResponseImplCopyWith<$Res>
    implements $OpenAIStreamChatCompletionResponseCopyWith<$Res> {
  factory _$$OpenAIStreamChatCompletionResponseImplCopyWith(
          _$OpenAIStreamChatCompletionResponseImpl value,
          $Res Function(_$OpenAIStreamChatCompletionResponseImpl) then) =
      __$$OpenAIStreamChatCompletionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<OpenAIStreamChatCompletionChoice> choices,
      int created,
      String model,
      String object});
}

/// @nodoc
class __$$OpenAIStreamChatCompletionResponseImplCopyWithImpl<$Res>
    extends _$OpenAIStreamChatCompletionResponseCopyWithImpl<$Res,
        _$OpenAIStreamChatCompletionResponseImpl>
    implements _$$OpenAIStreamChatCompletionResponseImplCopyWith<$Res> {
  __$$OpenAIStreamChatCompletionResponseImplCopyWithImpl(
      _$OpenAIStreamChatCompletionResponseImpl _value,
      $Res Function(_$OpenAIStreamChatCompletionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenAIStreamChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choices = null,
    Object? created = null,
    Object? model = null,
    Object? object = null,
  }) {
    return _then(_$OpenAIStreamChatCompletionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<OpenAIStreamChatCompletionChoice>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenAIStreamChatCompletionResponseImpl
    implements _OpenAIStreamChatCompletionResponse {
  const _$OpenAIStreamChatCompletionResponseImpl(
      {required this.id,
      required final List<OpenAIStreamChatCompletionChoice> choices,
      required this.created,
      required this.model,
      required this.object})
      : _choices = choices;

  factory _$OpenAIStreamChatCompletionResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenAIStreamChatCompletionResponseImplFromJson(json);

  @override
  final String id;
  final List<OpenAIStreamChatCompletionChoice> _choices;
  @override
  List<OpenAIStreamChatCompletionChoice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final int created;
  @override
  final String model;
  @override
  final String object;

  @override
  String toString() {
    return 'OpenAIStreamChatCompletionResponse(id: $id, choices: $choices, created: $created, model: $model, object: $object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAIStreamChatCompletionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_choices), created, model, object);

  /// Create a copy of OpenAIStreamChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenAIStreamChatCompletionResponseImplCopyWith<
          _$OpenAIStreamChatCompletionResponseImpl>
      get copyWith => __$$OpenAIStreamChatCompletionResponseImplCopyWithImpl<
          _$OpenAIStreamChatCompletionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenAIStreamChatCompletionResponseImplToJson(
      this,
    );
  }
}

abstract class _OpenAIStreamChatCompletionResponse
    implements OpenAIStreamChatCompletionResponse {
  const factory _OpenAIStreamChatCompletionResponse(
      {required final String id,
      required final List<OpenAIStreamChatCompletionChoice> choices,
      required final int created,
      required final String model,
      required final String object}) = _$OpenAIStreamChatCompletionResponseImpl;

  factory _OpenAIStreamChatCompletionResponse.fromJson(
          Map<String, dynamic> json) =
      _$OpenAIStreamChatCompletionResponseImpl.fromJson;

  @override
  String get id;
  @override
  List<OpenAIStreamChatCompletionChoice> get choices;
  @override
  int get created;
  @override
  String get model;
  @override
  String get object;

  /// Create a copy of OpenAIStreamChatCompletionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenAIStreamChatCompletionResponseImplCopyWith<
          _$OpenAIStreamChatCompletionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenAIStreamChatCompletionChoice _$OpenAIStreamChatCompletionChoiceFromJson(
    Map<String, dynamic> json) {
  return _OpenAIStreamChatCompletionChoice.fromJson(json);
}

/// @nodoc
mixin _$OpenAIStreamChatCompletionChoice {
  int get index => throw _privateConstructorUsedError;
  OpenAIChatCompletionChoiceDelta get delta =>
      throw _privateConstructorUsedError;
  String? get finishReason => throw _privateConstructorUsedError;

  /// Serializes this OpenAIStreamChatCompletionChoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenAIStreamChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenAIStreamChatCompletionChoiceCopyWith<OpenAIStreamChatCompletionChoice>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAIStreamChatCompletionChoiceCopyWith<$Res> {
  factory $OpenAIStreamChatCompletionChoiceCopyWith(
          OpenAIStreamChatCompletionChoice value,
          $Res Function(OpenAIStreamChatCompletionChoice) then) =
      _$OpenAIStreamChatCompletionChoiceCopyWithImpl<$Res,
          OpenAIStreamChatCompletionChoice>;
  @useResult
  $Res call(
      {int index, OpenAIChatCompletionChoiceDelta delta, String? finishReason});

  $OpenAIChatCompletionChoiceDeltaCopyWith<$Res> get delta;
}

/// @nodoc
class _$OpenAIStreamChatCompletionChoiceCopyWithImpl<$Res,
        $Val extends OpenAIStreamChatCompletionChoice>
    implements $OpenAIStreamChatCompletionChoiceCopyWith<$Res> {
  _$OpenAIStreamChatCompletionChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenAIStreamChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? delta = null,
    Object? finishReason = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as OpenAIChatCompletionChoiceDelta,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of OpenAIStreamChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenAIChatCompletionChoiceDeltaCopyWith<$Res> get delta {
    return $OpenAIChatCompletionChoiceDeltaCopyWith<$Res>(_value.delta,
        (value) {
      return _then(_value.copyWith(delta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenAIStreamChatCompletionChoiceImplCopyWith<$Res>
    implements $OpenAIStreamChatCompletionChoiceCopyWith<$Res> {
  factory _$$OpenAIStreamChatCompletionChoiceImplCopyWith(
          _$OpenAIStreamChatCompletionChoiceImpl value,
          $Res Function(_$OpenAIStreamChatCompletionChoiceImpl) then) =
      __$$OpenAIStreamChatCompletionChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index, OpenAIChatCompletionChoiceDelta delta, String? finishReason});

  @override
  $OpenAIChatCompletionChoiceDeltaCopyWith<$Res> get delta;
}

/// @nodoc
class __$$OpenAIStreamChatCompletionChoiceImplCopyWithImpl<$Res>
    extends _$OpenAIStreamChatCompletionChoiceCopyWithImpl<$Res,
        _$OpenAIStreamChatCompletionChoiceImpl>
    implements _$$OpenAIStreamChatCompletionChoiceImplCopyWith<$Res> {
  __$$OpenAIStreamChatCompletionChoiceImplCopyWithImpl(
      _$OpenAIStreamChatCompletionChoiceImpl _value,
      $Res Function(_$OpenAIStreamChatCompletionChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenAIStreamChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? delta = null,
    Object? finishReason = freezed,
  }) {
    return _then(_$OpenAIStreamChatCompletionChoiceImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      delta: null == delta
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as OpenAIChatCompletionChoiceDelta,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenAIStreamChatCompletionChoiceImpl
    implements _OpenAIStreamChatCompletionChoice {
  const _$OpenAIStreamChatCompletionChoiceImpl(
      {required this.index, required this.delta, this.finishReason});

  factory _$OpenAIStreamChatCompletionChoiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenAIStreamChatCompletionChoiceImplFromJson(json);

  @override
  final int index;
  @override
  final OpenAIChatCompletionChoiceDelta delta;
  @override
  final String? finishReason;

  @override
  String toString() {
    return 'OpenAIStreamChatCompletionChoice(index: $index, delta: $delta, finishReason: $finishReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAIStreamChatCompletionChoiceImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.delta, delta) || other.delta == delta) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, delta, finishReason);

  /// Create a copy of OpenAIStreamChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenAIStreamChatCompletionChoiceImplCopyWith<
          _$OpenAIStreamChatCompletionChoiceImpl>
      get copyWith => __$$OpenAIStreamChatCompletionChoiceImplCopyWithImpl<
          _$OpenAIStreamChatCompletionChoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenAIStreamChatCompletionChoiceImplToJson(
      this,
    );
  }
}

abstract class _OpenAIStreamChatCompletionChoice
    implements OpenAIStreamChatCompletionChoice {
  const factory _OpenAIStreamChatCompletionChoice(
      {required final int index,
      required final OpenAIChatCompletionChoiceDelta delta,
      final String? finishReason}) = _$OpenAIStreamChatCompletionChoiceImpl;

  factory _OpenAIStreamChatCompletionChoice.fromJson(
          Map<String, dynamic> json) =
      _$OpenAIStreamChatCompletionChoiceImpl.fromJson;

  @override
  int get index;
  @override
  OpenAIChatCompletionChoiceDelta get delta;
  @override
  String? get finishReason;

  /// Create a copy of OpenAIStreamChatCompletionChoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenAIStreamChatCompletionChoiceImplCopyWith<
          _$OpenAIStreamChatCompletionChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenAIChatCompletionChoiceDelta _$OpenAIChatCompletionChoiceDeltaFromJson(
    Map<String, dynamic> json) {
  return _OpenAIChatCompletionChoiceDelta.fromJson(json);
}

/// @nodoc
mixin _$OpenAIChatCompletionChoiceDelta {
  String get content => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Serializes this OpenAIChatCompletionChoiceDelta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenAIChatCompletionChoiceDelta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenAIChatCompletionChoiceDeltaCopyWith<OpenAIChatCompletionChoiceDelta>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAIChatCompletionChoiceDeltaCopyWith<$Res> {
  factory $OpenAIChatCompletionChoiceDeltaCopyWith(
          OpenAIChatCompletionChoiceDelta value,
          $Res Function(OpenAIChatCompletionChoiceDelta) then) =
      _$OpenAIChatCompletionChoiceDeltaCopyWithImpl<$Res,
          OpenAIChatCompletionChoiceDelta>;
  @useResult
  $Res call({String content, String role});
}

/// @nodoc
class _$OpenAIChatCompletionChoiceDeltaCopyWithImpl<$Res,
        $Val extends OpenAIChatCompletionChoiceDelta>
    implements $OpenAIChatCompletionChoiceDeltaCopyWith<$Res> {
  _$OpenAIChatCompletionChoiceDeltaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenAIChatCompletionChoiceDelta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenAIChatCompletionChoiceDeltaImplCopyWith<$Res>
    implements $OpenAIChatCompletionChoiceDeltaCopyWith<$Res> {
  factory _$$OpenAIChatCompletionChoiceDeltaImplCopyWith(
          _$OpenAIChatCompletionChoiceDeltaImpl value,
          $Res Function(_$OpenAIChatCompletionChoiceDeltaImpl) then) =
      __$$OpenAIChatCompletionChoiceDeltaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String role});
}

/// @nodoc
class __$$OpenAIChatCompletionChoiceDeltaImplCopyWithImpl<$Res>
    extends _$OpenAIChatCompletionChoiceDeltaCopyWithImpl<$Res,
        _$OpenAIChatCompletionChoiceDeltaImpl>
    implements _$$OpenAIChatCompletionChoiceDeltaImplCopyWith<$Res> {
  __$$OpenAIChatCompletionChoiceDeltaImplCopyWithImpl(
      _$OpenAIChatCompletionChoiceDeltaImpl _value,
      $Res Function(_$OpenAIChatCompletionChoiceDeltaImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenAIChatCompletionChoiceDelta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? role = null,
  }) {
    return _then(_$OpenAIChatCompletionChoiceDeltaImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenAIChatCompletionChoiceDeltaImpl
    implements _OpenAIChatCompletionChoiceDelta {
  const _$OpenAIChatCompletionChoiceDeltaImpl(
      {required this.content, required this.role});

  factory _$OpenAIChatCompletionChoiceDeltaImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenAIChatCompletionChoiceDeltaImplFromJson(json);

  @override
  final String content;
  @override
  final String role;

  @override
  String toString() {
    return 'OpenAIChatCompletionChoiceDelta(content: $content, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAIChatCompletionChoiceDeltaImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, role);

  /// Create a copy of OpenAIChatCompletionChoiceDelta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenAIChatCompletionChoiceDeltaImplCopyWith<
          _$OpenAIChatCompletionChoiceDeltaImpl>
      get copyWith => __$$OpenAIChatCompletionChoiceDeltaImplCopyWithImpl<
          _$OpenAIChatCompletionChoiceDeltaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenAIChatCompletionChoiceDeltaImplToJson(
      this,
    );
  }
}

abstract class _OpenAIChatCompletionChoiceDelta
    implements OpenAIChatCompletionChoiceDelta {
  const factory _OpenAIChatCompletionChoiceDelta(
      {required final String content,
      required final String role}) = _$OpenAIChatCompletionChoiceDeltaImpl;

  factory _OpenAIChatCompletionChoiceDelta.fromJson(Map<String, dynamic> json) =
      _$OpenAIChatCompletionChoiceDeltaImpl.fromJson;

  @override
  String get content;
  @override
  String get role;

  /// Create a copy of OpenAIChatCompletionChoiceDelta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenAIChatCompletionChoiceDeltaImplCopyWith<
          _$OpenAIChatCompletionChoiceDeltaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
