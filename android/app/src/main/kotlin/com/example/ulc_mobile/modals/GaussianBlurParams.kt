package com.example.ulc_mobile.modals

data class GaussianBlurParams (
    val kSizedWidth: Double,
    val kSizedHeight: Double,
    val sigmaX: Double,
    val sigmaY: Double?,
    val borderType: Int?
)