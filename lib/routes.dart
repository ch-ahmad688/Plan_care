import 'package:get/get.dart';
import 'package:plant_care/On%20Boarding%20Screen/On_Boarding_Binding.dart';
import 'package:plant_care/Splash%20Screen/Splash_Screen_Binding.dart';
import 'package:plant_care/login/Login_Binding.dart';
import 'package:plant_care/login/Login_Screen.dart';

import 'On Boarding Screen/On boarding Screen.dart';
import 'Splash Screen/Splash Screen.dart';

class AppRoutes {
  static const String onboarding = '/onboarding';
  static const String splashscreen = '/splashscreen';
  static const String loginScreen = '/loginscreen';

  static final List<GetPage> pages = [
    GetPage(
      name: onboarding,
      page: () => OnBoardingScreen(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: splashscreen,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}