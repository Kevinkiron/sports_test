import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sports/utils/app_colors.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/global.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    SpotsApp(),
  );
}

class SpotsApp extends StatelessWidget {
  const SpotsApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Constants.width = MediaQuery.sizeOf(context).width;
    Constants.height = MediaQuery.sizeOf(context).height;
    precacheImage(AssetImage(AppImages.splash), context);

    return GetMaterialApp(
      theme: ThemeData(
        splashColor: AppColors.transparent,
        highlightColor: AppColors.transparent,
        hoverColor: AppColors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
