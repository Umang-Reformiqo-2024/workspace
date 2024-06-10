import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/login_signup/login_signup_controller.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LoginSignupController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: AnimatedContainer(
            duration: const Duration(seconds: 1),
            transform: Matrix4.translationValues(0, controller.startNextPageAnimation ? -MediaQuery.of(context).size.height * 1 : 0, 0,),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: controller.startNextPageAnimation?0:1,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset("assets/v2/png/app_logo.webp",height: 200,width: 250,),
                      Image.asset("assets/v2/png/login_signup.webp",height: 250,width: 250,),
                      const Align(alignment: Alignment.centerLeft,child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15), child: Text("Welcome to WorkSpaceCo.",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),),),
                      const Align(alignment: Alignment.centerLeft,child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0), child: Text("Join our community to unlock personalized features and enjoy a seamless experience. Log in if you already have an account, or sign up to get started!",style: TextStyle(fontFamily: AppFont.primary),textAlign: TextAlign.justify,),),),
                      const SizedBox(height: 30,),
                      AppButtonPrimary(onTap: () => controller.onTapLogin(), text: "Log in"),
                      AppButtonSecondary(onTap: () => controller.onTapSignup(), text: "Sign Up"),
                      GestureDetector(onTap: () => controller.onTapSkipAndBrowse(), child: const SizedBox(height: 50,child: Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text("Skip and Browse"),),),),
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
