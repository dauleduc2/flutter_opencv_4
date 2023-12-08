package com.example.ulc_mobile

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.media.MediaDrm.ErrorCodes
import android.util.Log
import androidx.annotation.NonNull
import com.example.ulc_mobile.modals.CannyParams
import com.example.ulc_mobile.modals.CtvColorParams
import com.example.ulc_mobile.modals.GaussianBlurParams
import com.example.ulc_mobile.modals.ThresholdParams
import com.google.gson.Gson
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.opencv.android.Utils
import org.opencv.core.Core
import org.opencv.core.CvType
import org.opencv.core.Mat
import org.opencv.core.MatOfPoint
import org.opencv.core.Scalar
import org.opencv.core.Size
import org.opencv.imgproc.Imgproc
import java.io.ByteArrayOutputStream

class MainActivity: FlutterActivity() {

    private fun byteArrayToMat(data: ByteArray) : Mat {
        // Chuyển đổi byte array thành Bitmap
        val bitmap = BitmapFactory.decodeByteArray(data, 0, data.size)

        // Khởi tạo một ma trận OpenCV từ Bitmap
        val mat = Mat(bitmap.height, bitmap.width, CvType.CV_8UC4)
        Utils.bitmapToMat(bitmap, mat)

        return mat;
    }

    private fun matToByteArray(mat: Mat): ByteArray {
        val grayscaleBitmap = Bitmap.createBitmap(mat.cols(), mat.rows(), Bitmap.Config.ARGB_8888)
        Utils.matToBitmap(mat, grayscaleBitmap)

        val outputStream = ByteArrayOutputStream()
        grayscaleBitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStream)

        return outputStream.toByteArray()
    }

    private fun ctvColor(imageMat : Mat, params: CtvColorParams) {
        Imgproc.cvtColor(imageMat, imageMat, params.code)
    }

    private fun gaussianBlur(imageMat: Mat, params: GaussianBlurParams) {
        Imgproc.GaussianBlur(imageMat, imageMat, Size(params.kSizedWidth,params.kSizedHeight), params.sigmaX, params.sigmaY ?: 0.0, params.borderType ?: Core.BORDER_DEFAULT)
    }

    private fun canny(imageMat: Mat, params: CannyParams) {
        Imgproc.Canny(imageMat, imageMat, params.threshold1, params.threshold2);
    }

    private fun threshold(imageMat: Mat, params: ThresholdParams) {
        Imgproc.threshold(imageMat, imageMat, params.threshold, params.maxVal, params.type)
    }


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        System.loadLibrary("opencv_java4")

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, OpenCVConstants.channel).setMethodCallHandler {
                call, result ->

            when (call.method) {
                OpenCVConstants.process -> {
                    val imageByteArray = call.argument<ByteArray>("image");
                    val processActions = call.argument<List<Map<String, Any>>>("actions");

                    val imageBitmap = byteArrayToMat(imageByteArray!!)

                    processActions?.forEach{item ->
                        val method = item["method"] as String
                        val params = item["params"] as Map<String, Any>

                        when (method) {
                            "cvtColor" -> {
                                val ctvColorParams = Gson().fromJson(params.toString(), CtvColorParams::class.java)
                                ctvColor(imageBitmap, ctvColorParams)
                            }

                            "gaussianBlur" -> {
                                val gaussianBlurParams = Gson().fromJson(params.toString(), GaussianBlurParams::class.java)
                                gaussianBlur(imageBitmap, gaussianBlurParams)
                            }

                            "canny" -> {
                                val cannyParams = Gson().fromJson(params.toString(), CannyParams::class.java)
                                canny(imageBitmap, cannyParams)

                            }

                            "threshold" -> {
                                val thresholdParams = Gson().fromJson(params.toString(), ThresholdParams::class.java)
                                threshold(imageBitmap, thresholdParams)
                            }

                            else -> {
                                imageBitmap!!
                            }
                        }

                    }

                    val finalImage = matToByteArray(imageBitmap)

                    result.success(finalImage)
                }


                else -> {
                    result.notImplemented()
                }
            }
        }
    }

}
