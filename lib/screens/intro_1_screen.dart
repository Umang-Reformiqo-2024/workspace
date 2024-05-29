import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/intro_1_controller.dart';
import 'package:workspace/widgets/button_widget.dart';
import 'package:workspace/widgets/text_widget.dart';

class Intro1Screen extends StatelessWidget {
  const Intro1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Intro1Controller(),
      builder: (controller) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/test_icons/app_logo.png"),
                  LimitedBox(maxHeight: 100,maxWidth: 300,child: InkWell(onTap: () {
                    debugPrint("===[${SvgPicture.asset("assets/icons/test_icons/app_logo.png",colorFilter: ColorFilter.mode(Colors.black, BlendMode.dstATop),)}]===");
                  },child: SvgPicture.asset("assets/icons/svg_icons/app_logo.svg",fit: BoxFit.fill,colorFilter: ColorFilter.linearToSrgbGamma(),))),
                  Spacer(),
                  Image.asset("assets/icons/test_icons/intro_1_icon.png"),
                  SizedBox(height: 150,),
                  TextWidget.simpleText(data: "Finding you a suitable place to work",fontSize: 24,fontColor: AppColor.blackTextPrimary,fontFamily: AppFont.primary,fontWeight: FontWeight.w500),
                  TextWidget.simpleText(data: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",fontSize: 18,fontColor: AppColor.blackTextSecondary,fontFamily: AppFont.primary),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: ButtonWidget.primaryButton(text: TextWidget.simpleText(data: "Let`s Start",fontColor: AppColor.whiteTextPrimary,fontWeight: FontWeight.bold,fontFamily: AppFont.primary), onTap: () => controller.onTapLetsStartBtn(),),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },);
  }
}
