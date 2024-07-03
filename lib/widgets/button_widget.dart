import 'package:flutter/material.dart';

import '../app_data/app_colors/app_color.dart';

class ButtonWidget{


  static Widget primaryButton({required Widget text, required Function() onTap, double height=60, double width=300, Color color=AppColor.black, double borderRadius=10,}){
    return InkWell(
      onTap: onTap,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: const [BoxShadow(color: Color(0xFFE7EAEE),offset: Offset(0, 3),blurRadius: 5)]
        ),
        child: Center(
          child: text,
        ),
      ),
    );
  }
  static Widget secondaryButton({required Widget text, required Function() onTap, double height=60, double width=300, Color borderColor=AppColor.black,Color color=AppColor.white, double borderRadius=10,}){
    return InkWell(
      onTap: onTap,
      splashFactory: NoSplash.splashFactory,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color:color,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: const [BoxShadow(color: Color(0xFFE7EAEE),offset: Offset(0, 3),blurRadius: 5)]
        ),
        child: Center(
          child: text,
        ),
      ),
    );
  }
  static Widget textButton({required Widget text, required Function() onTap}){
    return InkWell(
      onTap: onTap,
      splashFactory: NoSplash.splashFactory,
      child: text,
    );
  }
}