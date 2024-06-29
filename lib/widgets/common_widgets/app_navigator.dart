import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppNavigator{

  static void screenTo({required Widget screen,}){
    Get.to(()=> screen,transition: Transition.cupertino,curve: Curves.easeInOut,duration: Duration(milliseconds: 700));

  }

  static void screenOff({required Widget screen,}){
    Get.off(()=> screen,transition: Transition.cupertino,curve: Curves.easeInOut,duration: Duration(milliseconds: 700));

  }

  static void screenOffAll({required Widget screen,}){
    Get.offAll(()=> screen,transition: Transition.cupertino,curve: Curves.easeInOut,duration: Duration(milliseconds: 700));

  }
}