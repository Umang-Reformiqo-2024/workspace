import 'package:get/get.dart';

class HomeWrapperController extends GetxController{

  int stackIndex=0;

  onTapBottomBar({required int index}) {
    stackIndex=index;
    update();
  }
}