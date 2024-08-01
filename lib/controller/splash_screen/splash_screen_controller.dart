import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/introduction/introduction_screen.dart';
import 'package:workspace/screens/login_signup/login_signup_screen.dart';

class SplashScreenController extends GetxController{

  bool logoUp = false;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      logoUp = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.off(() => const LoginSignupScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: const Duration(milliseconds: 1500));
      });
    });
  }
}