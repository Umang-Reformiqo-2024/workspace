import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/intro_1_screen.dart';

class SplashController extends GetxController{


  bool isLogoAtTop = false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(Duration(seconds: 5), () {
        isLogoAtTop = true;
        update();
        Get.off(()=>Intro1Screen(),curve: Curves.easeInOut,duration: Duration(seconds: 1),transition: Transition.downToUp);
    });
  }
}