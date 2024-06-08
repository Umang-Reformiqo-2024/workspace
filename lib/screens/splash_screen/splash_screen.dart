import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/splash_screen/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashScreenController(),
        builder: (controller) => Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          transform: Matrix4.translationValues(
            0,
            controller.logoUp ? -MediaQuery.of(context).size.height * 0.4 : 0,
            0,
          ),
          child: AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: controller.logoUp ? 0 : 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/v2/png/app_logo.webp",
                  height: 200,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: LinearProgressIndicator(
                    color: const Color(0xFF2F2F2F),
                    backgroundColor: const Color(0xFF2F2F2F).withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
