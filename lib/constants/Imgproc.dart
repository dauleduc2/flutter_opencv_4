// ignore_for_file: constant_identifier_names

class Imgproc {
  static const int IPL_BORDER_CONSTANT = 0;
  static const int IPL_BORDER_REPLICATE = 1;
  static const int IPL_BORDER_REFLECT = 2;
  static const int IPL_BORDER_WRAP = 3;
  static const int IPL_BORDER_REFLECT_101 = 4;
  static const int IPL_BORDER_TRANSPARENT = 5;
  static const int CV_INTER_NN = 0;
  static const int CV_INTER_LINEAR = 1;
  static const int CV_INTER_CUBIC = 2;
  static const int CV_INTER_AREA = 3;
  static const int CV_INTER_LANCZOS4 = 4;
  static const int CV_MOP_ERODE = 0;
  static const int CV_MOP_DILATE = 1;
  static const int CV_MOP_OPEN = 2;
  static const int CV_MOP_CLOSE = 3;
  static const int CV_MOP_GRADIENT = 4;
  static const int CV_MOP_TOPHAT = 5;
  static const int CV_MOP_BLACKHAT = 6;
  static const int CV_RETR_EXTERNAL = 0;
  static const int CV_RETR_LIST = 1;
  static const int CV_RETR_CCOMP = 2;
  static const int CV_RETR_TREE = 3;
  static const int CV_RETR_FLOODFILL = 4;
  static const int CV_CHAIN_APPROX_NONE = 1;
  static const int CV_CHAIN_APPROX_SIMPLE = 2;
  static const int CV_CHAIN_APPROX_TC89_L1 = 3;
  static const int CV_CHAIN_APPROX_TC89_KCOS = 4;
  static const int CV_THRESH_BINARY = 0;
  static const int CV_THRESH_BINARY_INV = 1;
  static const int CV_THRESH_TRUNC = 2;
  static const int CV_THRESH_TOZERO = 3;
  static const int CV_THRESH_TOZERO_INV = 4;
  static const int CV_THRESH_MASK = 7;
  static const int CV_THRESH_OTSU = 8;
  static const int CV_THRESH_TRIANGLE = 16;

  // C++: enum <unnamed>
  static const int CV_GAUSSIAN_5x5 = 7;
  static const int CV_SCHARR = -1;
  static const int CV_MAX_SOBEL_KSIZE = 7;
  static const int CV_RGBA2mRGBA = 125;
  static const int CV_mRGBA2RGBA = 126;
  static const int CV_WARP_FILL_OUTLIERS = 8;
  static const int CV_WARP_INVERSE_MAP = 16;
  static const int CV_CHAIN_CODE = 0;
  static const int CV_LINK_RUNS = 5;
  static const int CV_POLY_APPROX_DP = 0;
  static const int CV_CONTOURS_MATCH_I1 = 1;
  static const int CV_CONTOURS_MATCH_I2 = 2;
  static const int CV_CONTOURS_MATCH_I3 = 3;
  static const int CV_CLOCKWISE = 1;
  static const int CV_COUNTER_CLOCKWISE = 2;
  static const int CV_COMP_CORREL = 0;
  static const int CV_COMP_CHISQR = 1;
  static const int CV_COMP_INTERSECT = 2;
  static const int CV_COMP_BHATTACHARYYA = 3;
  static const int CV_COMP_HELLINGER = CV_COMP_BHATTACHARYYA;
  static const int CV_COMP_CHISQR_ALT = 4;
  static const int CV_COMP_KL_DIV = 5;
  static const int CV_DIST_MASK_3 = 3;
  static const int CV_DIST_MASK_5 = 5;
  static const int CV_DIST_MASK_PRECISE = 0;
  static const int CV_DIST_LABEL_CCOMP = 0;
  static const int CV_DIST_LABEL_PIXEL = 1;
  static const int CV_DIST_USER = -1;
  static const int CV_DIST_L1 = 1;
  static const int CV_DIST_L2 = 2;
  static const int CV_DIST_C = 3;
  static const int CV_DIST_L12 = 4;
  static const int CV_DIST_FAIR = 5;
  static const int CV_DIST_WELSCH = 6;
  static const int CV_DIST_HUBER = 7;
  static const int CV_CANNY_L2_GRADIENT = (1 << 31);
  static const int CV_HOUGH_STANDARD = 0;
  static const int CV_HOUGH_PROBABILISTIC = 1;
  static const int CV_HOUGH_MULTI_SCALE = 2;
  static const int CV_HOUGH_GRADIENT = 3;

  // C++: enum MorphShapes_c (MorphShapes_c)
  static const int CV_SHAPE_RECT = 0;
  static const int CV_SHAPE_CROSS = 1;
  static const int CV_SHAPE_ELLIPSE = 2;
  static const int CV_SHAPE_CUSTOM = 100;

  // C++: enum SmoothMethod_c (SmoothMethod_c)
  static const int CV_BLUR_NO_SCALE = 0;
  static const int CV_BLUR = 1;
  static const int CV_GAUSSIAN = 2;
  static const int CV_MEDIAN = 3;
  static const int CV_BILATERAL = 4;

  // C++: enum AdaptiveThresholdTypes (cv.AdaptiveThresholdTypes)
  static const int ADAPTIVE_THRESH_MEAN_C = 0;
  static const int ADAPTIVE_THRESH_GAUSSIAN_C = 1;

  // C++: enum ColorConversionCodes (cv.ColorConversionCodes)
  static const int COLOR_BGR2BGRA = 0;
  static const int COLOR_RGB2RGBA = COLOR_BGR2BGRA;
  static const int COLOR_BGRA2BGR = 1;
  static const int COLOR_RGBA2RGB = COLOR_BGRA2BGR;
  static const int COLOR_BGR2RGBA = 2;
  static const int COLOR_RGB2BGRA = COLOR_BGR2RGBA;
  static const int COLOR_RGBA2BGR = 3;
  static const int COLOR_BGRA2RGB = COLOR_RGBA2BGR;
  static const int COLOR_BGR2RGB = 4;
  static const int COLOR_RGB2BGR = COLOR_BGR2RGB;
  static const int COLOR_BGRA2RGBA = 5;
  static const int COLOR_RGBA2BGRA = COLOR_BGRA2RGBA;
  static const int COLOR_BGR2GRAY = 6;
  static const int COLOR_RGB2GRAY = 7;
  static const int COLOR_GRAY2BGR = 8;
  static const int COLOR_GRAY2RGB = COLOR_GRAY2BGR;
  static const int COLOR_GRAY2BGRA = 9;
  static const int COLOR_GRAY2RGBA = COLOR_GRAY2BGRA;
  static const int COLOR_BGRA2GRAY = 10;
  static const int COLOR_RGBA2GRAY = 11;
  static const int COLOR_BGR2BGR565 = 12;
  static const int COLOR_RGB2BGR565 = 13;
  static const int COLOR_BGR5652BGR = 14;
  static const int COLOR_BGR5652RGB = 15;
  static const int COLOR_BGRA2BGR565 = 16;
  static const int COLOR_RGBA2BGR565 = 17;
  static const int COLOR_BGR5652BGRA = 18;
  static const int COLOR_BGR5652RGBA = 19;
  static const int COLOR_GRAY2BGR565 = 20;
  static const int COLOR_BGR5652GRAY = 21;
  static const int COLOR_BGR2BGR555 = 22;
  static const int COLOR_RGB2BGR555 = 23;
  static const int COLOR_BGR5552BGR = 24;
  static const int COLOR_BGR5552RGB = 25;
  static const int COLOR_BGRA2BGR555 = 26;
  static const int COLOR_RGBA2BGR555 = 27;
  static const int COLOR_BGR5552BGRA = 28;
  static const int COLOR_BGR5552RGBA = 29;
  static const int COLOR_GRAY2BGR555 = 30;
  static const int COLOR_BGR5552GRAY = 31;
  static const int COLOR_BGR2XYZ = 32;
  static const int COLOR_RGB2XYZ = 33;
  static const int COLOR_XYZ2BGR = 34;
  static const int COLOR_XYZ2RGB = 35;
  static const int COLOR_BGR2YCrCb = 36;
  static const int COLOR_RGB2YCrCb = 37;
  static const int COLOR_YCrCb2BGR = 38;
  static const int COLOR_YCrCb2RGB = 39;
  static const int COLOR_BGR2HSV = 40;
  static const int COLOR_RGB2HSV = 41;
  static const int COLOR_BGR2Lab = 44;
  static const int COLOR_RGB2Lab = 45;
  static const int COLOR_BGR2Luv = 50;
  static const int COLOR_RGB2Luv = 51;
  static const int COLOR_BGR2HLS = 52;
  static const int COLOR_RGB2HLS = 53;
  static const int COLOR_HSV2BGR = 54;
  static const int COLOR_HSV2RGB = 55;
  static const int COLOR_Lab2BGR = 56;
  static const int COLOR_Lab2RGB = 57;
  static const int COLOR_Luv2BGR = 58;
  static const int COLOR_Luv2RGB = 59;
  static const int COLOR_HLS2BGR = 60;
  static const int COLOR_HLS2RGB = 61;
  static const int COLOR_BGR2HSV_FULL = 66;
  static const int COLOR_RGB2HSV_FULL = 67;
  static const int COLOR_BGR2HLS_FULL = 68;
  static const int COLOR_RGB2HLS_FULL = 69;
  static const int COLOR_HSV2BGR_FULL = 70;
  static const int COLOR_HSV2RGB_FULL = 71;
  static const int COLOR_HLS2BGR_FULL = 72;
  static const int COLOR_HLS2RGB_FULL = 73;
  static const int COLOR_LBGR2Lab = 74;
  static const int COLOR_LRGB2Lab = 75;
  static const int COLOR_LBGR2Luv = 76;
  static const int COLOR_LRGB2Luv = 77;
  static const int COLOR_Lab2LBGR = 78;
  static const int COLOR_Lab2LRGB = 79;
  static const int COLOR_Luv2LBGR = 80;
  static const int COLOR_Luv2LRGB = 81;
  static const int COLOR_BGR2YUV = 82;
  static const int COLOR_RGB2YUV = 83;
  static const int COLOR_YUV2BGR = 84;
  static const int COLOR_YUV2RGB = 85;
  static const int COLOR_BGR2YUV_I420 = 86;
  static const int COLOR_RGB2YUV_I420 = 87;
  static const int COLOR_YUV2BGR_I420 = 88;
  static const int COLOR_YUV2RGB_I420 = 89;
  static const int COLOR_BGR2YUV_YV12 = 90;
  static const int COLOR_RGB2YUV_YV12 = 91;
  static const int COLOR_YUV2BGR_YV12 = 92;
  static const int COLOR_YUV2RGB_YV12 = 93;
  static const int COLOR_BayerBG2BGR = 46;
  static const int COLOR_BayerGB2BGR = 47;
  static const int COLOR_BayerRG2BGR = 48;
  static const int COLOR_BayerGR2BGR = 49;
  static const int COLOR_BayerBG2RGB = COLOR_BayerRG2BGR;
  static const int COLOR_BayerGB2RGB = COLOR_BayerGR2BGR;
  static const int COLOR_BayerRG2RGB = COLOR_BayerBG2BGR;
  static const int COLOR_BayerGR2RGB = COLOR_BayerGB2BGR;
  static const int COLOR_BayerBG2GRAY = 86;
  static const int COLOR_BayerGB2GRAY = 87;
  static const int COLOR_BayerRG2GRAY = 88;
  static const int COLOR_BayerGR2GRAY = 89;
  static const int COLOR_BayerBG2BGR_VNG = 62;
  static const int COLOR_BayerGB2BGR_VNG = 63;
  static const int COLOR_BayerRG2BGR_VNG = 64;
  static const int COLOR_BayerGR2BGR_VNG = 65;
  static const int COLOR_BayerBG2RGB_VNG = COLOR_BayerRG2BGR_VNG;
  static const int COLOR_BayerGB2RGB_VNG = COLOR_BayerGR2BGR_VNG;
  static const int COLOR_BayerRG2RGB_VNG = COLOR_BayerBG2BGR_VNG;
  static const int COLOR_BayerGR2RGB_VNG = COLOR_BayerGB2BGR_VNG;
  static const int COLOR_BayerBG2BGR_EA = 135,
      COLOR_BayerGB2BGR_EA = 136,
      COLOR_BayerRG2BGR_EA = 137,
      COLOR_BayerGR2BGR_EA = 138,
      COLOR_BayerRGGB2BGR_EA = COLOR_BayerBG2BGR_EA,
      COLOR_BayerGRBG2BGR_EA = COLOR_BayerGB2BGR_EA,
      COLOR_BayerBGGR2BGR_EA = COLOR_BayerRG2BGR_EA,
      COLOR_BayerGBRG2BGR_EA = COLOR_BayerGR2BGR_EA,
      COLOR_BayerRGGB2RGB_EA = COLOR_BayerBGGR2BGR_EA,
      COLOR_BayerGRBG2RGB_EA = COLOR_BayerGBRG2BGR_EA,
      COLOR_BayerBGGR2RGB_EA = COLOR_BayerRGGB2BGR_EA,
      COLOR_BayerGBRG2RGB_EA = COLOR_BayerGRBG2BGR_EA,
      COLOR_BayerBG2RGB_EA = COLOR_BayerRG2BGR_EA,
      COLOR_BayerGB2RGB_EA = COLOR_BayerGR2BGR_EA,
      COLOR_BayerRG2RGB_EA = COLOR_BayerBG2BGR_EA,
      COLOR_BayerGR2RGB_EA = COLOR_BayerGB2BGR_EA,
      COLOR_BayerBG2BGRA = 139,
      COLOR_BayerGB2BGRA = 140,
      COLOR_BayerRG2BGRA = 141,
      COLOR_BayerGR2BGRA = 142,
      COLOR_BayerRGGB2BGRA = COLOR_BayerBG2BGRA,
      COLOR_BayerGRBG2BGRA = COLOR_BayerGB2BGRA,
      COLOR_BayerBGGR2BGRA = COLOR_BayerRG2BGRA,
      COLOR_BayerGBRG2BGRA = COLOR_BayerGR2BGRA,
      COLOR_BayerRGGB2RGBA = COLOR_BayerBGGR2BGRA,
      COLOR_BayerGRBG2RGBA = COLOR_BayerGBRG2BGRA,
      COLOR_BayerBGGR2RGBA = COLOR_BayerRGGB2BGRA,
      COLOR_BayerGBRG2RGBA = COLOR_BayerGRBG2BGRA,
      COLOR_BayerBG2RGBA = COLOR_BayerRG2BGRA,
      COLOR_BayerGB2RGBA = COLOR_BayerGR2BGRA,
      COLOR_BayerRG2RGBA = COLOR_BayerBG2BGRA,
      COLOR_BayerGR2RGBA = COLOR_BayerGB2BGRA,
      COLOR_COLORCVT_MAX = 143;

  static const int COLORMAP_AUTUMN = 0,
      COLORMAP_BONE = 1,
      COLORMAP_JET = 2,
      COLORMAP_WINTER = 3,
      COLORMAP_RAINBOW = 4,
      COLORMAP_OCEAN = 5,
      COLORMAP_SUMMER = 6,
      COLORMAP_SPRING = 7,
      COLORMAP_COOL = 8,
      COLORMAP_HSV = 9,
      COLORMAP_PINK = 10,
      COLORMAP_HOT = 11,
      COLORMAP_PARULA = 12,
      COLORMAP_MAGMA = 13,
      COLORMAP_INFERNO = 14,
      COLORMAP_PLASMA = 15,
      COLORMAP_VIRIDIS = 16,
      COLORMAP_CIVIDIS = 17,
      COLORMAP_TWILIGHT = 18,
      COLORMAP_TWILIGHT_SHIFTED = 19,
      COLORMAP_TURBO = 20,
      COLORMAP_DEEPGREEN = 21;

  static const int CCL_DEFAULT = -1,
      CCL_WU = 0,
      CCL_GRANA = 1,
      CCL_BOLELLI = 2,
      CCL_SAUF = 3,
      CCL_BBDT = 4,
      CCL_SPAGHETTI = 5;

  static const int CC_STAT_LEFT = 0,
      CC_STAT_TOP = 1,
      CC_STAT_WIDTH = 2,
      CC_STAT_HEIGHT = 3,
      CC_STAT_AREA = 4,
      CC_STAT_MAX = 5;

  static const int CHAIN_APPROX_NONE = 1,
      CHAIN_APPROX_SIMPLE = 2,
      CHAIN_APPROX_TC89_L1 = 3,
      CHAIN_APPROX_TC89_KCOS = 4;

  static const int DIST_LABEL_CCOMP = 0, DIST_LABEL_PIXEL = 1;

  static const int DIST_MASK_3 = 3, DIST_MASK_5 = 5, DIST_MASK_PRECISE = 0;

  static const int DIST_USER = -1,
      DIST_L1 = 1,
      DIST_L2 = 2,
      DIST_C = 3,
      DIST_L12 = 4,
      DIST_FAIR = 5,
      DIST_WELSCH = 6,
      DIST_HUBER = 7;

  static const int FLOODFILL_FIXED_RANGE = 1 << 16,
      FLOODFILL_MASK_ONLY = 1 << 17;

  static const int GC_BGD = 0, GC_FGD = 1, GC_PR_BGD = 2, GC_PR_FGD = 3;

  static const int GC_INIT_WITH_RECT = 0,
      GC_INIT_WITH_MASK = 1,
      GC_EVAL = 2,
      GC_EVAL_FREEZE_MODEL = 3;

  static const int FONT_HERSHEY_SIMPLEX = 0,
      FONT_HERSHEY_PLAIN = 1,
      FONT_HERSHEY_DUPLEX = 2,
      FONT_HERSHEY_COMPLEX = 3,
      FONT_HERSHEY_TRIPLEX = 4,
      FONT_HERSHEY_COMPLEX_SMALL = 5,
      FONT_HERSHEY_SCRIPT_SIMPLEX = 6,
      FONT_HERSHEY_SCRIPT_COMPLEX = 7,
      FONT_ITALIC = 16;

  static const int HISTCMP_CORREL = 0,
      HISTCMP_CHISQR = 1,
      HISTCMP_INTERSECT = 2,
      HISTCMP_BHATTACHARYYA = 3,
      HISTCMP_HELLINGER = HISTCMP_BHATTACHARYYA,
      HISTCMP_CHISQR_ALT = 4,
      HISTCMP_KL_DIV = 5;

  static const int HOUGH_STANDARD = 0,
      HOUGH_PROBABILISTIC = 1,
      HOUGH_MULTI_SCALE = 2,
      HOUGH_GRADIENT = 3,
      HOUGH_GRADIENT_ALT = 4;

  static const int INTER_NEAREST = 0,
      INTER_LINEAR = 1,
      INTER_CUBIC = 2,
      INTER_AREA = 3,
      INTER_LANCZOS4 = 4,
      INTER_LINEAR_EXACT = 5,
      INTER_NEAREST_EXACT = 6,
      INTER_MAX = 7,
      WARP_FILL_OUTLIERS = 8,
      WARP_INVERSE_MAP = 16;

  static const int INTER_BITS = 5,
      INTER_BITS2 = INTER_BITS * 2,
      INTER_TAB_SIZE = 1 << INTER_BITS,
      INTER_TAB_SIZE2 = INTER_TAB_SIZE * INTER_TAB_SIZE;

  static const int LSD_REFINE_NONE = 0, LSD_REFINE_STD = 1, LSD_REFINE_ADV = 2;

  static const int FILLED = -1, LINE_4 = 4, LINE_8 = 8, LINE_AA = 16;

  static const int MARKER_CROSS = 0,
      MARKER_TILTED_CROSS = 1,
      MARKER_STAR = 2,
      MARKER_DIAMOND = 3,
      MARKER_SQUARE = 4,
      MARKER_TRIANGLE_UP = 5,
      MARKER_TRIANGLE_DOWN = 6;

  static const int MORPH_RECT = 0, MORPH_CROSS = 1, MORPH_ELLIPSE = 2;

  static const int MORPH_ERODE = 0,
      MORPH_DILATE = 1,
      MORPH_OPEN = 2,
      MORPH_CLOSE = 3,
      MORPH_GRADIENT = 4,
      MORPH_TOPHAT = 5,
      MORPH_BLACKHAT = 6,
      MORPH_HITMISS = 7;

  static const int INTERSECT_NONE = 0,
      INTERSECT_PARTIAL = 1,
      INTERSECT_FULL = 2;

  static const int RETR_EXTERNAL = 0,
      RETR_LIST = 1,
      RETR_CCOMP = 2,
      RETR_TREE = 3,
      RETR_FLOODFILL = 4;

  static const int CONTOURS_MATCH_I1 = 1,
      CONTOURS_MATCH_I2 = 2,
      CONTOURS_MATCH_I3 = 3;

  static const int FILTER_SCHARR = -1;

  static const int TM_SQDIFF = 0,
      TM_SQDIFF_NORMED = 1,
      TM_CCORR = 2,
      TM_CCORR_NORMED = 3,
      TM_CCOEFF = 4,
      TM_CCOEFF_NORMED = 5;

  static const int THRESH_BINARY = 0,
      THRESH_BINARY_INV = 1,
      THRESH_TRUNC = 2,
      THRESH_TOZERO = 3,
      THRESH_TOZERO_INV = 4,
      THRESH_MASK = 7,
      THRESH_OTSU = 8,
      THRESH_TRIANGLE = 16;

  static const int WARP_POLAR_LINEAR = 0, WARP_POLAR_LOG = 256;
}
