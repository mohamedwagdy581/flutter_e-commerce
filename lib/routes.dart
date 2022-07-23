import 'package:ecommerce/core/constants/app_routs.dart';
import 'package:ecommerce/view/screens/auth/login/login_screen.dart';
import 'package:ecommerce/view/screens/auth/register/register_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes =
{
  AppRoutes.login : (context) => const LoginScreen(),
  AppRoutes.register : (context) => const RegisterScreen(),
};