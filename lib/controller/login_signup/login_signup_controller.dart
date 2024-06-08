import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/login_signup/login_screen.dart';

class LoginSignupController extends GetxController{

  bool startNextPageAnimation= false;


  onTapLogin(){
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => const LoginScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });
  }
  onTapSignup(){
    startNextPageAnimation=true;
    update();
  }
  onTapSkipAndBrowse(){
    startNextPageAnimation=true;
    update();
  }
}