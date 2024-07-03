import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/splash_screen/splash_screen.dart';

void main() {
  // runApp(GetMaterialApp(home: MyApp(),));
  // runApp(GetMaterialApp(home: HomeScreen(),));
  runApp(const GetMaterialApp(home: SplashScreen(),));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

