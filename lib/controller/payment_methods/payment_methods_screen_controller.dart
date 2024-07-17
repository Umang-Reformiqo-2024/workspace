import 'package:get/get.dart';

class PaymentMethodsScreenController extends GetxController{

  bool isExpandCard = false;

  onTapExpandCard(){
    isExpandCard?isExpandCard=false:isExpandCard=true;
    update();
  }
}