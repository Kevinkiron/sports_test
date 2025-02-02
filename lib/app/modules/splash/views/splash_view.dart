import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
        body: Container(
      height: Constants.height,
      width: Constants.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.black.withValues(alpha: 0.6),
            AppColors.blackLight,
            AppColors.blackLight,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Constants.height * 0.06,
          ),
          Image.asset(
            AppImages.splash,
            width: Constants.width * 0.83,
            height: Constants.height * 0.8,
            fit: BoxFit.fill,
          ),
          10.height,
          Kstyles().extraBold(text: "US Football Planner", size: 20),
          15.height,
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Kstyles()
                    .bold(text: "Play", size: 14, color: AppColors.textGrey),
                VerticalDivider(
                  color: AppColors.textGrey,
                ),
                Kstyles()
                    .bold(text: "Compete", size: 14, color: AppColors.textGrey),
                VerticalDivider(
                  color: AppColors.textGrey,
                ),
                Kstyles()
                    .bold(text: "Conquer", size: 14, color: AppColors.textGrey),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
