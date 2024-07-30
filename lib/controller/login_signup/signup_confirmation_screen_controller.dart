import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/home/wsc_location_screen.dart';
import '../../screens/user_account/user_profile_screen.dart';

class SignupConfirmationScreenController extends GetxController{

  bool startNextPageAnimation = false;

  onTapSetYourProfile(){
    navigateToUserProfileScreen();
  }
  onTapSkipAndNext(){
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => const WscLocationScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: const Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });
  }

  void navigateToUserProfileScreen() {
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => UserProfileScreen(isSignupProfile: true,),transition: Transition.fadeIn,curve: Curves.easeIn,duration: const Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });
  }
}