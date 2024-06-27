import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/bookings/my_bookings_screen.dart';
import 'package:workspace/screens/bookings/review_and_pay_screen.dart';
import 'package:workspace/screens/common_screen/help_and_support_screen.dart';
import 'package:workspace/screens/common_screen/notification_screen.dart';
import 'package:workspace/screens/common_screen/privacy_policy_screen.dart';
import 'package:workspace/screens/home/home_screen.dart';
import 'package:workspace/screens/home/wsc_location_detail_screen.dart';
import 'package:workspace/screens/introduction/introduction_screen.dart';
import 'package:workspace/screens/membership/membership_screen.dart';
import 'package:workspace/screens/splash_screen/splash_screen.dart';
import 'package:workspace/screens/user_account/user_account_screen.dart';

void main() {
  // runApp(GetMaterialApp(home: UserAccountScreen(),));
  // runApp(GetMaterialApp(home: HomeScreen(),));
  runApp(GetMaterialApp(home: SplashScreen(),));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
