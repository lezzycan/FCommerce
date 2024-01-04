import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce/features/authentications/screens/login/login.dart';

class OnboardingScreenController extends GetxController {
  static OnboardingScreenController get instance => Get.find();

  PageController pageController = PageController();

  Rx<int> currentIndex = 0.obs;

  void updatePage(index) => currentIndex.value = index;

  void dotNavigation(index) {
    currentIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    //  Get.offAll(const LoginScreen());
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
