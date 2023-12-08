// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gaussianBlur.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GaussianBlurParams _$GaussianBlurParamsFromJson(Map<String, dynamic> json) =>
    GaussianBlurParams(
      kSizedWidth: (json['kSizedWidth'] as num).toDouble(),
      kSizedHeight: (json['kSizedHeight'] as num).toDouble(),
      sigmaX: (json['sigmaX'] as num).toDouble(),
      sigmaY: (json['sigmaY'] as num?)?.toDouble(),
      borderType: json['borderType'] as int? ?? 0,
    );

Map<String, dynamic> _$GaussianBlurParamsToJson(GaussianBlurParams instance) =>
    <String, dynamic>{
      'kSizedWidth': instance.kSizedWidth,
      'kSizedHeight': instance.kSizedHeight,
      'sigmaX': instance.sigmaX,
      'sigmaY': instance.sigmaY,
      'borderType': instance.borderType,
    };
