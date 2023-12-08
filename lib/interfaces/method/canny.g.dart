// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canny.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CannyParams _$CannyParamsFromJson(Map<String, dynamic> json) => CannyParams(
      threshold1: (json['threshold1'] as num).toDouble(),
      threshold2: (json['threshold2'] as num).toDouble(),
    );

Map<String, dynamic> _$CannyParamsToJson(CannyParams instance) =>
    <String, dynamic>{
      'threshold1': instance.threshold1,
      'threshold2': instance.threshold2,
    };
