import 'package:json_annotation/json_annotation.dart';
import 'package:ulc_mobile/interfaces/action/opencv_action.dart';

part 'gaussianBlur.g.dart';

@JsonSerializable()
class GaussianBlurParams implements IOpenCVMethods {
  final double kSizedWidth;
  final double kSizedHeight;
  final double sigmaX;
  final double? sigmaY;
  final int? borderType;

  GaussianBlurParams({
    required this.kSizedWidth,
    required this.kSizedHeight,
    required this.sigmaX,
    this.sigmaY,
    this.borderType = 0,
  });
  @override
  Map<String, dynamic> toJson() => _$GaussianBlurParamsToJson(this);
}
