import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sports/app/modules/onboard/bindings/onboard_binding.dart';
import 'package:sports/app/modules/onboard/views/onboard_view.dart';
import 'package:sports/utils/app_button.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

class SplashGetStart extends StatelessWidget {
  const SplashGetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(10),
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
            width: Constants.width * 0.73,
            height: Constants.height * 0.7,
            fit: BoxFit.fill,
          ),
          10.height,
          Kstyles().extraBold(text: "Sports Event Planner", size: 20),
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
          ),
          20.height,
          AppButton(
            width: Constants.width * 0.8,
            onTap: () {
              Get.offAll(
                () => OnboardView(),
                binding: OnboardBinding(),
                transition: Transition.downToUp,
                fullscreenDialog: true,
                duration: const Duration(milliseconds: 1000),
              );
            },
            text: "Get Started",
          )
        ],
      ),
    ));
  }
}
