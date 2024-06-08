import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/screens/introduction/introduction_screen.dart';
import 'package:workspace/screens/splash_screen.dart';
import 'package:workspace/widgets/button_widget.dart';
import 'package:workspace/widgets/text_widget.dart';

void main() {
  runApp(const GetMaterialApp(home: IntroductionScreen(),));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}
