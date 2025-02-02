import 'package:flutter/material.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

class ActiveList extends StatelessWidget {
  const ActiveList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () async {},
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: Constants.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [AppColors.red, AppColors.darkred])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Kstyles().bold(
                                  text: "Rockwood Society Event", size: 16),
                              4.height,
                              Kstyles().semiBold(
                                  overflow: TextOverflow.visible,
                                  text:
                                      "Participate in the variety of games for exciting prizes",
                                  size: 12),
                              8.height,
                              Kstyles()
                                  .reg(text: "From 24-oct to 8-Nov", size: 12),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.green,
                                ),
                              ),
                              5.width,
                              Kstyles().reg(text: "Live", size: 12),
                            ],
                          ),
                        )
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
                                  text: "Last Date to Register 22 Oct",
                                  size: 10),
                            ),
                            Expanded(
                              flex: 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColors.buttonColor),
                                      padding: EdgeInsets.all(8),
                                      child: Kstyles().semiBold(
                                          text: "Participants", size: 10),
                                    ),
                                  ),
                                  8.width,
                                  GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColors.blackLight),
                                      child: Kstyles()
                                          .semiBold(text: "View", size: 10),
                                    ),
                                  ),
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
            ));
      },
    );
  }
}
