import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../controller/OnboardingController.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0077B6),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.onPageChange,
                children: [
                  buildPage(
                    "assets/Scan2.png",
                    "Scan all you documents quickly and easily",
                  ),
                  buildPage(
                    "assets/extract2.png",
                    "Extract Text from the document",
                  ),
                  buildPage(
                    "assets/summarize2.png",
                    "Summarize with the help of AI and create a note of it",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SmoothPageIndicator(
              controller: controller.pageController,
              count: 3,
              effect: WormEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.white30,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),

            SizedBox(height: 20),
            Obx(
              () => ElevatedButton(
                onPressed: controller.nextPage,
                child: Text(
                  controller.currentPage.value == 2 ? "Get Started" : "Next",
                ),
                style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFF8C42), // Use accent color for buttons
            foregroundColor: Colors.white, // Button text color
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10,
              ), // Slightly rounded corners
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String imagePath, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 250),
        SizedBox(height: 40),
        Text(
          text,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
