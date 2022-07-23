import 'package:ecommerce/core/constants/color.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(

        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
          bodyText1: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
            color: AppColors.grey,
            height: 2.0,
          ),
        ),
        primarySwatch: Colors.blue,
        fontFamily: 'PlayfairDisplay',
      ),
      home: const OnBoardingScreen(),
      routes: routes,
    );
  }
}
