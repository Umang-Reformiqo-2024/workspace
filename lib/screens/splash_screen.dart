import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) {
      return SafeArea(
        child: Scaffold(
          body: Center(child: AnimatedOpacity(
              opacity: controller.isLogoAtTop?0:1,
              duration: Duration(milliseconds: 500),
              child: Image.asset("assets/icons/test_icons/app_logo.png"))),

        ),
      );
    },);
  }
}

//31,39,66,67,69,70,73,81,83,87,91,94
//150-180
