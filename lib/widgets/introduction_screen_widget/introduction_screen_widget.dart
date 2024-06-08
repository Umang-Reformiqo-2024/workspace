import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app_data/app_fonts/app_font.dart';

class IntroductionScreenWidget extends StatelessWidget{
  String webpImage;
  String title;
  String description;
  IntroductionScreenWidget({required this.webpImage,required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0xFFD9D9D9),
          //     offset: Offset(0, 1),
          //     blurRadius: 5,
          //     spreadRadius: 1
          //   )
          // ]
        ),
        child: Column(children: [
          Image.asset(webpImage,height: 250,width:250,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.centerLeft,child: Text(title,style: TextStyle(fontSize: 18,fontFamily: AppFont.primary,fontWeight: FontWeight.bold),)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.centerLeft,child: Text(description,textAlign: TextAlign.justify,style: TextStyle(fontSize: 14,fontFamily: AppFont.primary,fontWeight: FontWeight.normal),)),
          ),
        ],),
      ),
    );
  }



}
