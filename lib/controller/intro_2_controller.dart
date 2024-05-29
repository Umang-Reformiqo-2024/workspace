import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/home_screen.dart';
import 'package:workspace/screens/signup_screen.dart';

class Intro2Controller extends GetxController{


  onTapMemberLogin(){}
  onTapSignUp(){
    Get.to(()=> SignupScreen(),curve: Curves.ease,duration: Duration(seconds: 1),transition: Transition.downToUp);
  }
  onTapSkipAndBrowse(){
    Get.to(()=>HomeScreen(),transition: Transition.downToUp,curve: Curves.ease,duration: Duration(seconds: 1));
  }
}