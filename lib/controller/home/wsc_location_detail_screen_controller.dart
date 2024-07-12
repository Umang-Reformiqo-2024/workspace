import 'package:get/get.dart';
import 'package:workspace/controller/home/item_list_screen_controller.dart';

class WscLocationDetailScreenController extends GetxController{

  final ItemListScreenController _itemListScreenController = Get.put(ItemListScreenController());

  void onChangedTabBar(int value) {

    _itemListScreenController.onTapCategoryItem(index: value);
  }


}