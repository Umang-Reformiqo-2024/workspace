import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IntroductionScreenController extends GetxController{


  PageController pageController = PageController(viewportFraction: 1,initialPage: 0);
  int currentPage=0;

  onPageChanged(int value) {
    currentPage=value;
    update();
  }
}