import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';

class NotificationScreenController extends GetxController{


  bool isShowNotifications = false;


  @override
  void onInit() {
    super.onInit();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3), () {
        isShowNotifications = true;
        update();
      });
    });
  }
}