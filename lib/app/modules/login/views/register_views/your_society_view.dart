import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports/app/modules/login/controllers/login_controller.dart';
import 'package:sports/app/routes/app_pages.dart';
import 'package:sports/utils/app_button.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

class YourSocietyView extends GetView<LoginController> {
  const YourSocietyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackground,
      appBar: AppBar(
        backgroundColor: AppColors.blackBackground,
        title: Kstyles().bold(text: "Your Society", size: 18),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.backgroundColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Kstyles().bold(text: "Select your Society", size: 20),
                5.height,
                Kstyles().reg(
                    overflow: TextOverflow.visible,
                    text:
                        "Choose your society from the list to find events near you.",
                    size: 14),
                20.height,
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => _societySelectionBottomSheet(),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.textGrey,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() {
                          return Kstyles().reg(
                              text: controller.society.value.isEmpty
                                  ? "Select your Society"
                                  : controller.society.value,
                              size: 14,
                              color: controller.society.value.isEmpty
                                  ? AppColors.textGrey
                                  : AppColors.backgroundColor);
                        }),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: AppColors.backgroundColor,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            AppButton(
              onTap: () {
                Get.dialog(
                  barrierDismissible: true,
                  AlertDialog(
                    backgroundColor: AppColors.blackBackground,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          AppImages.success,
                          height: 90,
                          width: 90,
                        ),
                        10.height,
                        Kstyles()
                            .med(text: "Welcome, DreamLink Society", size: 12),
                        Kstyles().semiBold(
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          text:
                              "Discover exciting events happening in your community",
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                );

                Future.delayed(Duration(seconds: 3), () {
                  Get.offNamed(Routes.HOME);
                });
              },
              text: "Continue",
              color: AppColors.buttonColor,
            )
          ],
        ),
      ),
    );
  }

  Container _societySelectionBottomSheet() {
    return Container(
      height: Constants.height * 0.6,
      color: AppColors.blackBackground,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20),
          Kstyles().med(text: "Select  Society", size: 12),
          Kstyles()
              .med(text: "Select your society from the below list", size: 12),
          20.height,
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: AppColors.textGrey.withValues(alpha: 0.5),
                  );
                },
                shrinkWrap: true,
                itemCount: controller.societies.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Kstyles().reg(
                      text: controller.societies[index],
                      size: 14,
                    ),
                    onTap: () {
                      controller.societySelect(controller.societies[index]);
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppButton(
              color: AppColors.buttonColor,
              onTap: () {},
              text: "Can’t find your society?",
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
