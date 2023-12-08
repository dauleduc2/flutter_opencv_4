// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opencv_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenCVAction<T> _$OpenCVActionFromJson<T extends IOpenCVMethods>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    OpenCVAction<T>(
      method: json['method'] as String,
      params: _$nullableGenericFromJson(json['params'], fromJsonT),
    );

Map<String, dynamic> _$OpenCVActionToJson<T extends IOpenCVMethods>(
  OpenCVAction<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'method': instance.method,
      'params': _$nullableGenericToJson(instance.params, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
