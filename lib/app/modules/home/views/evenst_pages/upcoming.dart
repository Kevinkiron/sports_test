import 'package:flutter/material.dart';
import 'package:sports/utils/app_images.dart';
import 'package:sports/utils/kstyles.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.nodata,
          height: 90,
          width: 90,
        ),
        Kstyles().med(text: "No Upcoming Events", size: 12),
      ],
    );
  }
}
