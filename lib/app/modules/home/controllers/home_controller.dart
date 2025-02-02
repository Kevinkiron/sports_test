import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:carousel_slider/carousel_controller.dart' as car;
import 'package:sports/app/modules/home/views/events.dart';
import 'package:sports/app/modules/home/views/home_view.dart';
import 'package:sports/app/modules/home/views/macthes.dart';
import 'package:sports/app/modules/home/views/profile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  DateTime? lastPressed;

  Future<bool> onWillPop() async {
    final now = DateTime.now();

    if (lastPressed == null ||
        now.difference(lastPressed!) > const Duration(seconds: 2)) {
      lastPressed = now;

      Get.snackbar(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        'Exit App',
        'Press back again to exit',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.black45,
        colorText: Colors.white,
      );

      return false;
    }
    return true;
  }

  RxInt currentIndex = 0.obs;
  List<Widget> pages = [
    HomeView(),
    EventsScreen(),
    MatchesScreen(),
    ProfileScreen(),
  ];
  void updateCarouselIndex(int index) {
    carouselIndex.value = index;
  }

  void bottomIndex(int index) {
    currentIndex.value = index;
  }

  RxInt evnetIndex = 0.obs;

  RxInt carouselIndex = 0.obs;

  final car.CarouselSliderController carouselController =
      car.CarouselSliderController();
  final ImagePicker _picker = ImagePicker();

  // Function to capture image from the camera
  Future<void> captureImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    } else {
      Get.snackbar('Error', 'No image selected.');
    }
  }

  Rx<File?> selectedImage = Rx<File?>(null);
}
