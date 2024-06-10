import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/login_signup/signup_confirmation_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

class SignupConfirmationScreen extends StatelessWidget {
  const SignupConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignupConfirmationScreenController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: AnimatedContainer(
            duration: const Duration(seconds: 1),
            transform: Matrix4.translationValues(0, controller.startNextPageAnimation ? -MediaQuery.of(context).size.height * 1 : 0, 0,),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: controller.startNextPageAnimation?0:1,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0,top: 200),
                        child: Image.asset("assets/v2/png/success_icon.webp",height: 150,width: 150,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100,top: 115),
                        child: Text("You have Successfully registered",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFont.primary,
                          fontSize: 22
                        ),),
                      ),
                      Text("For a full fledged experience",style: TextStyle(fontFamily: AppFont.primary),),
                      AppButtonPrimary(onTap: () => controller.onTapSetYourProfile(), text: "Set your profile"),
                      AppButtonSecondary(onTap:() => controller.onTapSkipAndNext(), text: "Skip and Next")
                    ],
                  ),
                ),
              ),
            ),
          ),
          ),
        ),
    );
  }
}
