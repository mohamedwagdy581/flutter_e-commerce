import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/view/screens/onboarding/widgets/custom_button.dart';
import 'package:ecommerce/view/screens/onboarding/widgets/custom_dot_controller.dart';
import 'package:ecommerce/view/screens/onboarding/widgets/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImplement());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotController(),
                   Spacer(),
                  CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
