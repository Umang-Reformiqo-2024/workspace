import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/login_signup/login_screen_controller.dart';
import '../../widgets/common_widgets/button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LoginScreenController(),
      builder: (controller) => SafeArea(
        child:
        Scaffold(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(splashFactory: NoSplash.splashFactory,onTap: () => Get.back(),child: const Icon(Icons.arrow_back,color: Colors.black,)),
                      const SizedBox(height: 50,),
                      const Text("Log in",style: TextStyle(fontFamily: AppFont.primary,fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),
                      const SizedBox(height: 10,),
                      const Text("Enter your credentials to access your account.",style: TextStyle(fontFamily: AppFont.primary,fontWeight: FontWeight.normal,fontSize: 14,color: Colors.black),),
                      const SizedBox(height: 50,),
                      TextField(
                        controller: controller.emailController,
                        decoration:InputDecoration(
                          border: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                          disabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: const Color(0xFFF6F6F6),
                          labelStyle: TextStyle(color: const Color(0xFF838383).withOpacity(0.6),fontWeight: FontWeight.bold,fontFamily: AppFont.primary),
                          labelText: "Username or Email",
                          prefixIcon: const Icon(Icons.person)
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.black,fontFamily: AppFont.primary),
                        cursorColor: Colors.black,
                      ),
                      const SizedBox(height: 20,),
                      TextField(
                        controller: controller.passwordController,
                        decoration:InputDecoration(
                          border: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                          disabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: const Color(0xFFF6F6F6),
                          labelStyle: TextStyle(color: const Color(0xFF838383).withOpacity(0.6),fontWeight: FontWeight.bold,fontFamily: AppFont.primary),
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: InkWell(onTap: () => controller.onTapPasswordEye(),child: Icon(controller.isPasswordHidden?Icons.visibility:Icons.visibility_off))
                        ),
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.black,fontFamily: AppFont.primary),
                        cursorColor: Colors.black,
                        obscureText: controller.isPasswordHidden,
                      ),
                      const SizedBox(height: 290,),
                      AppButtonPrimary(onTap:() => controller.onTapLoginButton(), text: "Log in"),
                      GestureDetector(onTap:() => controller.onTapSkipAndBrowseButton(), child: const Center(child: SizedBox(height: 80,child: Padding(padding: EdgeInsets.symmetric(vertical: 20), child: Text("Skip and Browse"),),)),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    ),);
  }
}
