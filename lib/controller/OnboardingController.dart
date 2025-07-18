import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/Homepage.dart';

class OnboardingController extends GetxController {
  PageController pageController = PageController();
  RxInt currentPage = 0.obs;
  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      Get.offAll(Homepage());
    }
  }

  void onPageChange(int index) {
    currentPage.value = index;
  }
}
