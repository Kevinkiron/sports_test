import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sports/app/modules/home/views/evenst_pages/active.dart';
import 'package:sports/app/modules/home/views/evenst_pages/completed.dart';
import 'package:sports/app/modules/home/views/evenst_pages/upcoming.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/kstyles.dart';

import '../../../../utils/app_images.dart';
import '../../../../utils/global.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackLight,
        title: Kstyles().bold(text: "Events", size: 18),
        leading: SizedBox(),
        centerTitle: true,
      ),
      backgroundColor: AppColors.blackLight,
      body: SafeArea(
        child: DefaultTabController(
          //  initialIndex: controller.tab.value,
          length: 3,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: AppColors.textGrey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TabBar(
                        unselectedLabelStyle: const TextStyle(
                            fontFamily: "Inter",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.backgroundColor),
                        labelStyle: const TextStyle(
                            fontFamily: "Inter",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.backgroundColor),
                        onTap: (value) {
                          //  controller.tabIndex(value);
                        },
                        labelColor: Colors.white,
                        unselectedLabelColor: AppColors.backgroundColor,
                        splashFactory: NoSplash.splashFactory,
                        indicatorSize: TabBarIndicatorSize.tab,
                        enableFeedback: false,
                        dividerColor: Colors.transparent,
                        indicatorColor: AppColors.blackBackground,
                        indicator: BoxDecoration(
                          color: AppColors.blackBackground,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        tabs: const [
                          SizedBox(
                            height: 35,
                            child: Tab(
                              text: 'Active',
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            child: Tab(
                              text: 'Completed',
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            child: Tab(
                              text: 'Upcoming',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Constants.height * .025,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          FadeInLeft(
                              animate: true,
                              duration: Duration(milliseconds: 600),
                              child: ActiveList()),
                          FadeInRight(
                              animate: true,
                              duration: Duration(milliseconds: 600),
                              child: CompletedView()),
                          FadeInRight(
                              animate: true,
                              duration: Duration(milliseconds: 600),
                              child: UpcomingScreen()),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
