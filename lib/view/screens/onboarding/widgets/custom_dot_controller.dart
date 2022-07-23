import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constants/color.dart';
import 'package:ecommerce/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImplement>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingModel.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 6.0),
              duration: const Duration(milliseconds: 900),
              height: 7.0,
              width: controller.currentPage == index ? 20.0 : 7.0,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
