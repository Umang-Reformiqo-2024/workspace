import 'package:flutter/material.dart';

class TextWidget{

  /// Simple Text Widget
  static simpleText({required String data,double fontSize=14,Color fontColor=Colors.black,String fontFamily="proximanovaRegular",FontWeight fontWeight=FontWeight.normal}){
    return Material(
      color: Colors.transparent,
      child: Text(
        data,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: fontColor,
          fontWeight: fontWeight,
        ),

      ),
    );
  }

}