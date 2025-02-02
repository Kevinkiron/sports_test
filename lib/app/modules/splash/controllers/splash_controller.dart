import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports/app/modules/splash/views/splash_get_start.dart';
import 'package:sports/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigate();
  }

  void navigate() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(
        () => SplashGetStart(),
        transition: Transition.fadeIn,
        fullscreenDialog: true,
        duration: const Duration(milliseconds: 1000),
      );
    });
  }
}
