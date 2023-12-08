import 'package:flutter/services.dart';
import 'package:ulc_mobile/constants/opencv.dart';
import 'package:ulc_mobile/services/logger.service.dart';

class OpenCVService {
  final MethodChannel platform = const MethodChannel('opencv');

  Future<Uint8List?> processImage(
    Uint8List data,
    List<Map<String, dynamic>> actions,
  ) async {
    try {
      LoggerService.log.i('OpenCVService.processImage');
      final grayImage =
          await platform.invokeMethod<dynamic>(OpenCVConstants.process.code, {
        'image': data,
        'actions': actions,
      });

      return grayImage;
    } on PlatformException catch (e) {
      LoggerService.log.e(e.message);

      return null;
    }
  }
}
