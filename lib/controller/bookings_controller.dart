import 'package:get/get.dart';
import 'package:workspace/controller/home_controller.dart';
import 'package:workspace/controller/home_wrapper_controller.dart';

class BookingsController extends GetxController{

  HomeWrapperController homeWrapperController = Get.put(HomeWrapperController());
  HomeController homeController = Get.put(HomeController());
}