import 'package:json_annotation/json_annotation.dart';
import 'package:ulc_mobile/interfaces/action/opencv_action.dart';

part 'ctvColor.g.dart';

@JsonSerializable()
class CtvColorParams implements IOpenCVMethods {
  int code;

  CtvColorParams({
    required this.code,
  });

  @override
  Map<String, dynamic> toJson() => _$CtvColorParamsToJson(this);
}
