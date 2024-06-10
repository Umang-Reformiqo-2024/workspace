import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/user_account/user_profile_screen.dart';

class SignupConfirmationScreenController extends GetxController{

  bool startNextPageAnimation = false;

  onTapSetYourProfile(){
    navigateToUserProfileScreen();
  }
  onTapSkipAndNext(){}

  void navigateToUserProfileScreen() {
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => const UserProfileScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });
  }
}