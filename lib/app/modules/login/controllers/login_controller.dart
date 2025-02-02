import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  RxString society = ''.obs;
  void societySelect(value) {
    society.value = value;
    Get.back();
  }

  List<String> societies = [
    "Society Name 1",
    "Society Name 2",
    "Society Name 3",
    "Society Name 3",
    "Society Name 4",
    "Society Name 5",
    "Society Name 6",
  ];
}
