import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/intro_2_screen.dart';
import 'package:workspace/screens/login_signup/login_signup_screen.dart';
import 'package:workspace/widgets/console_print.dart';

class IntroductionScreenController extends GetxController{


  PageController pageController = PageController(viewportFraction: 1,initialPage: 0);
  int currentPage=0;
  bool startNextPageAnimation=false;

  onPageChanged(int value) {
    currentPage=value;
    update();
  }

  onTapLetsStart() {
    DebugPrint.print(text: "On tap lets start button from Introduction screen");
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.off(() => const LoginSignupScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: Duration(milliseconds: 1500));
      });
    });
  }
}