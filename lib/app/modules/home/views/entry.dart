import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sports/app/modules/home/controllers/home_controller.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/global.dart';

class Entry extends GetView<HomeController> {
  const Entry({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, s) async {
          if (didPop) {
            return;
          }
          final shouldPop = await controller.onWillPop();
          if (shouldPop) {
            SystemNavigator.pop();
          }
        },
        child: Scaffold(
          backgroundColor: AppColors.blackLight,
          body: controller.pages[controller.currentIndex.value],
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(bottom: 10),
            child: BottomNavigationBar(
              enableFeedback: false,
              elevation: 0,
              backgroundColor: AppColors.blackLight,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.backgroundColor,
              selectedLabelStyle: const TextStyle(
                  color: AppColors.backgroundColor,
                  fontSize: 12,
                  fontFamily: "Inter"),
              unselectedLabelStyle: const TextStyle(
                  color: AppColors.textGrey, fontSize: 11, fontFamily: "Inter"),
              unselectedItemColor: AppColors.textGrey,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: _iconsImg(img: AppImages.home),
                  activeIcon: _iconsImg(img: AppImages.homeac),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: _iconsImg(img: AppImages.eevntin),
                  activeIcon: _iconsImg(img: AppImages.eventac),
                  label: "Events",
                ),
                BottomNavigationBarItem(
                  icon: _iconsImg(img: AppImages.maaina),
                  activeIcon: _iconsImg(img: AppImages.maac),
                  label: "Matches",
                ),
                BottomNavigationBarItem(
                  icon: _iconsImg(img: AppImages.profile),
                  activeIcon: _iconsImg(img: AppImages.profile),
                  label: "Profile",
                ),
              ],
              currentIndex: controller.currentIndex.value,
              onTap: (value) async {
                controller.bottomIndex(value);
              },
              selectedFontSize: 12,
              unselectedFontSize: 12,
              showUnselectedLabels: true,
            ),
          ),
        ),
      );
    });
  }
}

Widget _iconsImg({required String img}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Image.asset(
      img,
      width: Constants.width * 0.1,
      height: Constants.height * 0.025,
    ),
  );
}
