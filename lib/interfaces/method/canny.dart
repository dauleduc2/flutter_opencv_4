import 'package:json_annotation/json_annotation.dart';
import 'package:ulc_mobile/interfaces/action/opencv_action.dart';

part 'canny.g.dart';

@JsonSerializable()
class CannyParams implements IOpenCVMethods {
  double threshold1;
  double threshold2;

  CannyParams({
    required this.threshold1,
    required this.threshold2,
  });

  @override
  Map<String, dynamic> toJson() => _$CannyParamsToJson(this);
}
