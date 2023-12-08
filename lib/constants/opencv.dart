enum OpenCVConstants {
  process,
  //  methods
  ctvColor,
  gaussianBlur,
  canny,
  threshold,
  findContours;

  String get code {
    switch (this) {
      case OpenCVConstants.process:
        return "process";

      //  methods
      case OpenCVConstants.ctvColor:
        return "cvtColor";
      case OpenCVConstants.gaussianBlur:
        return "gaussianBlur";
      case OpenCVConstants.canny:
        return "canny";
      case OpenCVConstants.threshold:
        return "threshold";
      case OpenCVConstants.findContours:
        return "findContours";
    }
  }
}
