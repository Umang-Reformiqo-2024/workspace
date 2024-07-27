import 'package:get/get.dart';

class MyBookingsScreenController extends GetxController{

  String bookingType = "History";

  void onChangeBookingTab({required int value}) {
    if(value == 1)
      {
        bookingType = "Upcoming";
      }
    else
      {
        bookingType = "History";
      }
    update();
  }


}