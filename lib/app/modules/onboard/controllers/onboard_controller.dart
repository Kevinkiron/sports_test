import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports/app/data/model.dart/dummy.dart';
import 'package:sports/app/modules/home/bindings/home_binding.dart';
import 'package:sports/app/modules/home/views/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sports/app/modules/login/bindings/login_binding.dart';
import 'package:sports/app/modules/login/views/register_views/register.dart';
import 'package:sports/utils/app_images.dart';

class OnboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final PageController pageController = PageController();
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    animationController.forward();
  }

  void onPageChanged(int page) {
    animationController.reset();
    animation = Tween<double>(
      begin: page / onboardItems.length,
      end: (page + 1) / onboardItems.length,
    ).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    ));
    animationController.forward();
  }

  void nextPage() async {
    if (pageController.page! < onboardItems.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool('onBoard', false);
      Get.offAll(
        () => const LoginView(),
        transition: Transition.zoom,
        fullscreenDialog: true,
        binding: LoginBinding(),
        duration: const Duration(milliseconds: 1000),
      );
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    animationController.dispose();
    super.onClose();
  }

  final List<OnboardModel> onboardItems = [
    OnboardModel(
      img: AppImages.onboard1,
      title: "Discover Games in\nyour society",
      desc:
          "Find, join, and participate in exciting\ngames organised within your society",
    ),
    OnboardModel(
      img: AppImages.onboard2,
      title: "Register & Play with\nTeams",
      desc:
          "Sign up for matches, join your team, and\ncompete in your favourite sports.”",
    ),
    OnboardModel(
      img: AppImages.onboard3,
      title: "Connect and\nCollaborate",
      desc:
          "Build team, communicate with members,\n& request schedule changes seamlessly",
    ),
  ];
}
