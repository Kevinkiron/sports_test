import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports/app/modules/home/controllers/home_controller.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/kstyles.dart';

class ProfileScreen extends GetView<HomeController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.blackLight,
          title: Kstyles().bold(text: "Profile", size: 18),
          leading: SizedBox(),
          centerTitle: true,
        ),
        backgroundColor: AppColors.blackLight,
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                controller.captureImage();
              },
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.backgroundColor,
                      backgroundImage: controller.selectedImage.value == null
                          ? AssetImage(AppImages.profile)
                          : FileImage(controller.selectedImage.value!),
                    ),
                    Positioned(
                      bottom: 0,
                      right: -5,
                      child: Icon(
                        Icons.edit,
                        size: 22,
                        color: AppColors.backgroundColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
