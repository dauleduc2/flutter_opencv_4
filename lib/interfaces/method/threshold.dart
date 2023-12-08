import 'package:json_annotation/json_annotation.dart';
import 'package:ulc_mobile/interfaces/action/opencv_action.dart';

part 'threshold.g.dart';

@JsonSerializable()
class ThresholdParams implements IOpenCVMethods {
  final double threshold;
  final double maxVal;
  final int type;

  ThresholdParams({
    required this.threshold,
    required this.maxVal,
    required this.type,
  });

  @override
  Map<String, dynamic> toJson() => _$ThresholdParamsToJson(this);
}
