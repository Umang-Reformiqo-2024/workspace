import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/stored_data/shared_preference.dart';

import '../../screens/bookings/booking_schedule_screen.dart';

class WscLocationController extends GetxController {




  onTapBookNow(){
    Get.to(()=> const BookingScheduleScreen(),duration: const Duration(milliseconds: 700),transition: Transition.cupertino,curve: Curves.easeInOut);
  }
}