import 'package:flutter/material.dart';

import '../../app_data/app_fonts/app_font.dart';

class AppButtonPrimary extends StatelessWidget {
  void Function() onTap;
  String text;
  double buttonHeight=60;
  Color textColor = Colors.white;
  Color buttonColor = const Color(0xFF2F2F2F);
  double buttonRadius = 10;
  FontWeight textWeight = FontWeight.bold;
  double textSize = 20;
  String textFont = AppFont.primary;
  EdgeInsetsGeometry buttonMargin = const EdgeInsets.symmetric(horizontal: 30,vertical: 10);
  AppButtonPrimary({
    super.key,
    required this.onTap,
    required this.text,
    this.buttonHeight=60,
    this.textColor = Colors.white,
    this.buttonColor =const Color(0xFF2F2F2F),
    this.buttonRadius = 10,
    this.textWeight = FontWeight.bold,
    this.textSize = 20,
    this.textFont = AppFont.primary,
    this.buttonMargin =const EdgeInsets.symmetric(horizontal: 30,vertical: 10)
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        margin: buttonMargin,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(buttonRadius)
        ),
        child: Center(child: Text(text,style: TextStyle(color: textColor,fontWeight:textWeight,fontSize: textSize,fontFamily: textFont),),),
      ),
    );
  }
}
class AppButtonSecondary extends StatelessWidget {
  void Function() onTap;
  String text;
  double buttonHeight=60;
  Color textColor = const Color(0xFF2F2F2F);
  Color borderColor = const Color(0xFF2F2F2F);
  Color buttonColor = Colors.white;
  double buttonRadius = 10;
  FontWeight textWeight = FontWeight.bold;
  double textSize = 20;
  String textFont = AppFont.primary;
  EdgeInsetsGeometry buttonMargin = const EdgeInsets.symmetric(horizontal: 30,vertical: 10);
  AppButtonSecondary({
    super.key,
    required this.onTap,
    required this.text,
    this.buttonHeight=60,
    this.buttonColor = Colors.white,
    this.textColor =const Color(0xFF2F2F2F),
    this.borderColor =const Color(0xFF2F2F2F),
    this.buttonRadius = 10,
    this.textWeight = FontWeight.bold,
    this.textSize = 20,
    this.textFont = AppFont.primary,
    this.buttonMargin =const EdgeInsets.symmetric(horizontal: 30,vertical: 10)
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonHeight,
        margin: buttonMargin,
        decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(buttonRadius)
        ),
        child: Center(child: Text(text,style: TextStyle(color: textColor,fontWeight:textWeight,fontSize: textSize,fontFamily: textFont),),),
      ),
    );
  }
}
