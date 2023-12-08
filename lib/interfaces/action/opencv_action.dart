import 'package:json_annotation/json_annotation.dart';

part 'opencv_action.g.dart';

abstract class IOpenCVMethods {
  Map<String, dynamic> toJson();
}

@JsonSerializable(genericArgumentFactories: true)
class OpenCVAction<T extends IOpenCVMethods> {
  String method;
  T? params;
  OpenCVAction({required this.method, this.params});

  factory OpenCVAction.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$OpenCVActionFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$OpenCVActionToJson<T>(this, toJsonT);
}
