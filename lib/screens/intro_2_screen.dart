import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/intro_2_controller.dart';

import '../app_data/app_colors/app_color.dart';
import '../app_data/app_fonts/app_font.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class Intro2Screen extends StatelessWidget {
  const Intro2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Intro2Controller(),
      builder: (controller) {
      return SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset("assets/icons/test_icons/app_logo.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset("assets/icons/test_icons/intro_2_icon.png"),
                ),
                Spacer(),
                TextWidget.simpleText(data: "Finding you a suitable place to work",fontSize: 24,fontColor: AppColor.blackTextPrimary,fontFamily: AppFont.primary,fontWeight: FontWeight.w500),
                TextWidget.simpleText(data: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",fontSize: 18,fontColor: AppColor.blackTextSecondary,fontFamily: AppFont.primary),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                  child: ButtonWidget.primaryButton(text: TextWidget.simpleText(data: "Member Login",fontColor: AppColor.whiteTextPrimary,fontWeight: FontWeight.bold,fontFamily: AppFont.primary), onTap: () => controller.onTapMemberLogin(),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ButtonWidget.secondaryButton(text: TextWidget.simpleText(data: "Sign up",fontColor: AppColor.blackTextPrimary,fontWeight: FontWeight.bold,fontFamily: AppFont.primary), onTap: () => controller.onTapSignUp(),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 20),
                  child: ButtonWidget.textButton(text: TextWidget.simpleText(data: "Skip and Browse",fontColor: AppColor.blackTextPrimary,fontWeight: FontWeight.normal,fontFamily: AppFont.primary), onTap: () => controller.onTapSkipAndBrowse(),),
                ),
              ],
            ),
          ),
        ),
      ));
    },);
  }
}
