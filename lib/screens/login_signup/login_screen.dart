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
          body: Padding(
            padding: EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(splashFactory: NoSplash.splashFactory,onTap: () => Get.back(),child: Icon(Icons.arrow_back,color: Colors.black,)),
                  SizedBox(height: 50,),
                  Text("Log in",style: TextStyle(fontFamily: AppFont.primary,fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Enter your credentials to access your account.",style: TextStyle(fontFamily: AppFont.primary,fontWeight: FontWeight.normal,fontSize: 14,color: Colors.black),),
                  SizedBox(height: 50,),
                  TextField(
                    decoration:InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                      disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Color(0xFFF6F6F6),
                      labelStyle: TextStyle(color: Color(0xFF838383).withOpacity(0.6),fontWeight: FontWeight.bold,fontFamily: AppFont.primary),
                      labelText: "Username or Email",
                      prefixIcon: Icon(Icons.person)
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black,fontFamily: AppFont.primary),
                    cursorColor: Colors.black,
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    decoration:InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                      disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Color(0xFFF6F6F6),
                      labelStyle: TextStyle(color: Color(0xFF838383).withOpacity(0.6),fontWeight: FontWeight.bold,fontFamily: AppFont.primary),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black,fontFamily: AppFont.primary),
                    cursorColor: Colors.black,
                    obscureText: true,
                  ),
                  SizedBox(height: 290,),
                  AppButtonPrimary(onTap: () {}, text: "Sign Up"),
                  GestureDetector(onTap: () {}, child: Center(child: const SizedBox(height: 80,child: Padding(padding: EdgeInsets.symmetric(vertical: 20), child: Text("Skip and Browse"),),)),),


                ],
              ),
            ),
          ),
        ),
    ),);
  }
}
