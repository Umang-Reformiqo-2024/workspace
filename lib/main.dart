import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/bookings/review_and_pay_screen.dart';
import 'package:workspace/screens/introduction/introduction_screen.dart';
import 'package:workspace/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const GetMaterialApp(home: ReviewAndPayScreen(),));
  // runApp(const GetMaterialApp(home: SplashScreen(),));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
