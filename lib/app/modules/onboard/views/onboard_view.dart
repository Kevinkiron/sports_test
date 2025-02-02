import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sports/app/modules/home/bindings/home_binding.dart';
import 'package:sports/app/modules/home/views/home_view.dart';
import 'package:sports/app/modules/login/bindings/login_binding.dart';
import 'package:sports/app/modules/login/views/register_views/register.dart';
import 'package:sports/utils/app_button.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackground,
      body: Stack(
        children: [
          PageView.builder(
            itemCount: controller.onboardItems.length,
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemBuilder: (context, index) {
              return OnboardCommon(
                desc: controller.onboardItems[index].desc,
                img: controller.onboardItems[index].img,
                title: controller.onboardItems[index].title,
              );
            },
          ),
          Positioned(
              bottom: Constants.height * 0.04,
              right: 0,
              left: 0,
              child: Column(
                children: [
                  AppButton(
                    width: Constants.width * 0.85,
                    onTap: controller.nextPage,
                    text: "Next",
                  ),
                  AppButton(
                    onTap: () {
                      Get.offAll(
                        () => const LoginView(),
                        transition: Transition.zoom,
                        fullscreenDialog: true,
                        binding: LoginBinding(),
                        duration: const Duration(milliseconds: 1000),
                      );
                    },
                    color: AppColors.blackBackground,
                    text: "Skip",
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class OnboardCommon extends StatelessWidget {
  const OnboardCommon({
    super.key,
    required this.img,
    required this.title,
    required this.desc,
  });
  final String img;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          img,
          height: Constants.height * .6,
          width: Constants.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SlideInUp(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Kstyles().extraBold(
                    text: title, size: 28, textAlign: TextAlign.center),
                SizedBox(
                  height: Constants.height * .025,
                ),
                SizedBox(
                  child: Kstyles().semiBold(
                    text: desc,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: Constants.height * .025,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
