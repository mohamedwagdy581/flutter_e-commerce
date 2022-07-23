import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomSliderOnBoarding extends GetView<OnBoardingControllerImplement> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      physics: const BouncingScrollPhysics(),
      onPageChanged: (index)
      {
        controller.onPageChanged(index);
      },
      itemCount: onBoardingModel.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Text(
              onBoardingModel[index].title!,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 80.0,
            ),
            Image.asset(
              onBoardingModel[index].image!,
              width: 200,
              height: 230,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingModel[index].body!,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
