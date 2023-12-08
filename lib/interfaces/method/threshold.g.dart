// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threshold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThresholdParams _$ThresholdParamsFromJson(Map<String, dynamic> json) =>
    ThresholdParams(
      threshold: (json['threshold'] as num).toDouble(),
      maxVal: (json['maxVal'] as num).toDouble(),
      type: json['type'] as int,
    );

Map<String, dynamic> _$ThresholdParamsToJson(ThresholdParams instance) =>
    <String, dynamic>{
      'threshold': instance.threshold,
      'maxVal': instance.maxVal,
      'type': instance.type,
    };
