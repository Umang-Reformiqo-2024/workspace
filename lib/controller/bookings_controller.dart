import 'package:get/get.dart';
import 'package:workspace/controller/home/item_list_screen_controller.dart';
import 'package:workspace/controller/home_wrapper_controller.dart';

class BookingsController extends GetxController{

  HomeWrapperController homeWrapperController = Get.put(HomeWrapperController());
  ItemListScreenController itemListScreenController = Get.put(ItemListScreenController());
}