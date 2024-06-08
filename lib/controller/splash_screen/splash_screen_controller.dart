import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/introduction/introduction_screen.dart';

class SplashScreenController extends GetxController{

  bool logoUp = false;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      logoUp = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.off(() => const IntroductionScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: Duration(milliseconds: 1500));
      });
    });
  }
}