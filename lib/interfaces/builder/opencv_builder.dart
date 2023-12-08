import 'dart:io';

import 'dart:typed_data';

import 'package:ulc_mobile/constants/opencv.dart';
import 'package:ulc_mobile/constants/Imgproc.dart';
import 'package:ulc_mobile/interfaces/action/opencv_action.dart';
import 'package:ulc_mobile/interfaces/method/canny.dart';
import 'package:ulc_mobile/interfaces/method/ctvColor.dart';
import 'package:ulc_mobile/interfaces/method/gaussianBlur.dart';
import 'package:ulc_mobile/interfaces/method/threshold.dart';
import 'package:ulc_mobile/services/opencv.service.dart';

class OpenCVQueryBuilder {
  late OpenCVService _openCVService;
  late File _file;
  final List<OpenCVAction> _data = [];

  List<OpenCVAction> get data => _data;

  OpenCVQueryBuilder(File file) {
    _openCVService = OpenCVService();
    _file = file;
  }

  void canny(CannyParams cannyMethod) {
    _data.add(OpenCVAction(
      method: OpenCVConstants.canny.code,
      params: cannyMethod,
    ));
  }

  void findContours() {
    _data.add(OpenCVAction(
      method: OpenCVConstants.findContours.code,
    ));
  }

  void gaussianBlur(GaussianBlurParams gaussianBlurMethod) {
    _data.add(OpenCVAction(
      method: OpenCVConstants.gaussianBlur.code,
      params: gaussianBlurMethod,
    ));
  }

  void grayScale() {
    _data.add(OpenCVAction(
      method: OpenCVConstants.ctvColor.code,
      params: CtvColorParams(code: Imgproc.COLOR_BGR2GRAY),
    ));
  }

  void ctvColor(CtvColorParams ctvColorMethod) {
    _data.add(OpenCVAction(
      method: OpenCVConstants.ctvColor.code,
      params: ctvColorMethod,
    ));
  }

  void threshold(ThresholdParams thresholdMethod) {
    _data.add(OpenCVAction(
      method: OpenCVConstants.threshold.code,
      params: thresholdMethod,
    ));
  }

  Future<Uint8List?> processImage() async {
    final Uint8List imageInBytes = await _file.readAsBytes();
    final actionsInJson =
        _data.map((e) => e.toJson((value) => value.toJson())).toList();

    return _openCVService.processImage(imageInBytes, actionsInJson);
  }
}
