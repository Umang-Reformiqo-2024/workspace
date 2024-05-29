import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/intro_2_screen.dart';

class Intro1Controller extends GetxController{




  onTapLetsStartBtn(){
    Get.to(()=> const Intro2Screen(),transition: Transition.downToUp,duration: Duration(seconds: 1),curve: Curves.easeOut);
  }
}