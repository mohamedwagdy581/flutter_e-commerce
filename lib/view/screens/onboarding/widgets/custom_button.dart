import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImplement> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(bottom: 40.0) ,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100.0),
        onPressed: ()
        {
          controller.next();
        },
        color: AppColors.primaryColor,
        child: const Text(
          'Continue',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
