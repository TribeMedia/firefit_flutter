// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmptyFailure _$EmptyFailureFromJson(Map<String, dynamic> json) =>
    _EmptyFailure(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$EmptyFailureToJson(_EmptyFailure instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_UnprocessableEntityFailure _$UnprocessableEntityFailureFromJson(
        Map<String, dynamic> json) =>
    _UnprocessableEntityFailure(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UnprocessableEntityFailureToJson(
        _UnprocessableEntityFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_UnauthorizedFailure _$UnauthorizedFailureFromJson(Map<String, dynamic> json) =>
    _UnauthorizedFailure(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$UnauthorizedFailureToJson(
        _UnauthorizedFailure instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_BadRequestFailure _$BadRequestFailureFromJson(Map<String, dynamic> json) =>
    _BadRequestFailure(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BadRequestFailureToJson(_BadRequestFailure instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_NotFoundFailure _$NotFoundFailureFromJson(Map<String, dynamic> json) =>
    _NotFoundFailure(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NotFoundFailureToJson(_NotFoundFailure instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_NetworkFailure _$NetworkFailureFromJson(Map<String, dynamic> json) =>
    _NetworkFailure(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NetworkFailureToJson(_NetworkFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_StorageFailure _$StorageFailureFromJson(Map<String, dynamic> json) =>
    _StorageFailure(
      json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StorageFailureToJson(_StorageFailure instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
