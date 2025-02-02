import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports/app/modules/home/controllers/home_controller.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

class MatchesScreen extends GetView<HomeController> {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackLight,
        title: Kstyles().bold(text: "Matches", size: 18),
        leading: SizedBox(),
        centerTitle: true,
      ),
      backgroundColor: AppColors.blackLight,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Kstyles().bold(text: "Registered Sports", size: 16),
            20.height,
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.evnetIndex.value =
                            controller.evnetIndex.value == index ? -1 : index;
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppColors.blackBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Kstyles().bold(text: "Men\'s T20", size: 14),
                            Obx(() => Icon(
                                  controller.evnetIndex.value == index
                                      ? Icons.keyboard_arrow_up_rounded
                                      : Icons.keyboard_arrow_down_outlined,
                                  color: AppColors.backgroundColor,
                                  size: 20,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Obx(() {
                      return controller.evnetIndex.value == index
                          ? ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Kstyles().reg(text: "Today", size: 14),
                                    5.height,
                                    ...List.generate(2, (todayIndex) {
                                      return Container(
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.only(bottom: 20),
                                        decoration: BoxDecoration(
                                          color: AppColors.blackBackground,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Kstyles().semiBold(
                                                  text:
                                                      "Team Alpha v/s Team Beta",
                                                  size: 14,
                                                ),
                                                Kstyles().reg(
                                                  text:
                                                      "Team Alpha v/s Team Beta",
                                                  size: 12,
                                                ),
                                                IntrinsicHeight(
                                                  child: Row(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                              Icons
                                                                  .calendar_month_outlined,
                                                              size: 12,
                                                              color: AppColors
                                                                  .backgroundColor),
                                                          4.width,
                                                          Kstyles().reg(
                                                              text: "12 Feb",
                                                              size: 12),
                                                        ],
                                                      ),
                                                      VerticalDivider(),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .pin_drop_outlined,
                                                            color: AppColors
                                                                .backgroundColor,
                                                            size: 12,
                                                          ),
                                                          4.width,
                                                          Kstyles().reg(
                                                              text:
                                                                  "Kansas City",
                                                              size: 12),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              color: AppColors.backgroundColor,
                                              size: 15,
                                            )
                                          ],
                                        ),
                                      );
                                    })
                                  ],
                                );
                              })
                          : SizedBox();
                    })
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
