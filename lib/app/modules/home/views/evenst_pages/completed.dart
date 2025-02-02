import 'package:flutter/material.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

class CompletedView extends StatelessWidget {
  const CompletedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {},
          child: Container(
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.blackBackground,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Kstyles().bold(text: "American football", size: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.orange,
                                ),
                              ),
                              5.width,
                              Kstyles().reg(text: "Completed", size: 12),
                            ],
                          ),
                        ],
                      ),
                      Kstyles().reg(text: "Rockwood Society Event", size: 14),
                      5.height,
                      Kstyles().bold(text: "Sprinter V/s Bulls", size: 14),
                      8.height,
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.calendar_month_outlined,
                                    size: 14, color: AppColors.backgroundColor),
                                4.width,
                                Kstyles().reg(text: "12 Feb", size: 14),
                              ],
                            ),
                            VerticalDivider(),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop_outlined,
                                  color: AppColors.backgroundColor,
                                  size: 14,
                                ),
                                4.width,
                                Kstyles().reg(text: "Kansas City", size: 14),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.textGrey.withValues(alpha: 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Kstyles().semiBold(
                                text: "Last Date to Register 22 Oct", size: 10),
                          ),
                          Expanded(
                            flex: 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColors.red),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Kstyles()
                                        .semiBold(text: "View", size: 10),
                                  ),
                                ),
                                8.width,
                              ],
                            ),
                          )
                        ],
                      ),
                      10.height,
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
