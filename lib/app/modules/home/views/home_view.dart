import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sports/utils/app_button.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/global.dart';
import 'package:sports/utils/kstyles.dart';

import '../controllers/home_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackLight,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.all(20),
            child: DefaultTabController(
              // initialIndex: controller.tabIndex.value,
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Kstyles().semiBold(text: "Welcome,", size: 24),
                      3.width,
                      Kstyles().semiBold(text: "John", size: 18),
                    ],
                  ),
                  Kstyles().semiBold(text: "Rockwood Society", size: 14),
                  10.height,
                  _bannerCarousel(),
                  20.height,
                  Kstyles().bold(text: "Quick Links", size: 16),
                  15.height,
                  _quickLinks(),
                  20.height,
                  Kstyles().bold(text: "Highlights", size: 16),
                  _highlisghts(),
                  20.height,
                  TabBar(
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    labelColor: AppColors.backgroundColor,
                    unselectedLabelColor: AppColors.backgroundColor,
                    splashFactory: NoSplash.splashFactory,
                    indicatorSize: TabBarIndicatorSize.tab,
                    enableFeedback: false,
                    dividerColor: Colors.transparent,
                    indicatorColor: AppColors.backgroundColor,
                    labelStyle: Kstyles().reg(text: '', size: 14).style,
                    unselectedLabelStyle:
                        Kstyles().reg(text: '', size: 14).style,
                    tabs: [
                      Tab(
                        text: 'Scheduled Match',
                      ),
                      // Remove Expanded here
                      Tab(
                        text: 'Previous Events',
                      ),
                    ],
                  ),
                  20.height,
                  SizedBox(
                    height: Constants.height,
                    child: TabBarView(
                        children: [_scheduledMatch(), _upcomingEvents()]),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  ListView _upcomingEvents() {
    return ListView.builder(
      itemCount: 1,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.blackBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Kstyles().bold(text: "American football", size: 14),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.backgroundColor)),
                    child: Row(
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
        );
      },
    );
  }

  ListView _scheduledMatch() {
    return ListView.builder(
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.blackBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Kstyles().bold(text: "American football", size: 14),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.backgroundColor)),
                    child: Row(
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
                        Kstyles().reg(text: "Upcoming", size: 12),
                      ],
                    ),
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
        );
      },
    );
  }

  SizedBox _highlisghts() {
    return SizedBox(
      height: Constants.height * 0.2,
      child: ListView.builder(
        itemCount: 5,
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 15, right: 20, bottom: 15, left: 5),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: AppColors.textGrey.withValues(alpha: 0.8),
                    offset: Offset(2, 3),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 6,
                    spreadRadius: 1)
              ],
              color: AppColors.blackLight,
              borderRadius: BorderRadius.circular(20),
            ),
            width: Constants.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Kstyles().reg(text: "Rockwood Society Event", size: 14),
                        5.height,
                        Kstyles().bold(text: "Sprinter V/s Bulls", size: 14),
                        8.height,
                        Row(
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
                      ],
                    ),
                    Image.asset(
                      AppImages.highlights,
                      height: Constants.height * 0.1,
                      width: Constants.width * 0.2,
                    )
                  ],
                ),
                Kstyles().reg(
                    overflow: TextOverflow.visible,
                    text:
                        "Players helps Sprinter to a 23-14 win over bulls in a high intensity match",
                    size: 12),
              ],
            ),
          );
        },
      ),
    );
  }

  Row _quickLinks() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              controller.bottomIndex(1);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: AppColors.textGrey.withValues(alpha: 0.8),
                      offset: Offset(2, 3),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 6,
                      spreadRadius: 1)
                ],
                color: AppColors.blackLight,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AppImages.quickLinkIcon,
                            height: 40,
                            width: 40,
                          ),
                          Kstyles().reg(text: "Active Events", size: 12)
                        ]),
                  ),
                  Expanded(
                      flex: 1,
                      child: Kstyles().extraBold(
                          text: "3", size: 24, color: AppColors.yellow)),
                ],
              ),
            ),
          ),
        ),
        20.width,
        Expanded(
          child: GestureDetector(
            onTap: () {
              controller.bottomIndex(1);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: AppColors.textGrey.withValues(alpha: 0.8),
                      offset: Offset(2, 3),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 6,
                      spreadRadius: 1)
                ],
                color: AppColors.blackLight,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AppImages.quickLinkIcon,
                            height: 40,
                            width: 40,
                          ),
                          Kstyles().reg(
                              text: "Upcoming Events",
                              size: 12,
                              overflow: TextOverflow.visible)
                        ]),
                  ),
                  Expanded(
                      flex: 1,
                      child: Kstyles().extraBold(
                          text: "6", size: 24, color: AppColors.yellow)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _bannerCarousel() {
    return Column(
      children: [
        CarouselSlider.builder(
            carouselController: controller.carouselController,
            itemCount: 3,
            options: CarouselOptions(
              height: Constants.height * 0.22,
              viewportFraction: 1,
              enlargeCenterPage: true,
              padEnds: false,
              enlargeFactor: 0.5,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 10),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.decelerate,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                controller.updateCarouselIndex(index);
              },
              enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            ),
            itemBuilder: (context, index, realIndex) {
              return GestureDetector(
                  onTap: () async {},
                  child: Container(
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
                                        text: "Rockwood Society Event",
                                        size: 16),
                                    4.height,
                                    Kstyles().semiBold(
                                        overflow: TextOverflow.visible,
                                        text:
                                            "Participate in the variety of games for exciting prizes",
                                        size: 12),
                                    8.height,
                                    Kstyles().reg(
                                        text: "From 24-oct to 8-Nov", size: 12),
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
                          color: AppColors.textGrey.withValues(alpha: 0.7),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
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
                        ),
                      ],
                    ),
                  ));
            }),
        10.height,
        Obx(() {
          return Center(
              child: SmoothPageIndicator(
            controller: PageController(
              initialPage: controller.carouselIndex.value,
            ),
            count: 3,
            effect: ExpandingDotsEffect(
              dotColor: Colors.white.withOpacity(0.5),
              activeDotColor: Colors.white,
              dotHeight: 6,
              dotWidth: 6,
              strokeWidth: 1.5,
              spacing: 6,
            ),
            onDotClicked: (index) {
              controller.carouselController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ));
        }),
      ],
    );
  }
}
