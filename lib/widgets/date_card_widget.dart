import 'package:flutter/material.dart';

class DateCardWidget extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final Color inActiveColor;
  final Color activeColor;
  final TextStyle inActiveTextStyle;
  final TextStyle activeTextStyle;
  final void Function() onTap;
  final bool isSelected;
  final String date;
  final String day;
  
  const DateCardWidget(
      {super.key,
        this.height=70,
        this.width=60,
        this.borderRadius=12,
        this.inActiveColor=Colors.transparent,
        this.activeColor=const Color(0xFFFF7171),
        this.inActiveTextStyle=const TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black),
        this.activeTextStyle=const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
        required this.onTap,
        required this.isSelected,
        required this.date,
        required this.day}
      );

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: () => onTap(),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: isSelected?activeColor:inActiveColor,
              borderRadius: BorderRadius.circular(borderRadius),
              boxShadow:[isSelected?BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0,blurRadius: 5,offset: const Offset(1, 1)):const BoxShadow(color: Colors.transparent)]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(day,style: isSelected?activeTextStyle:inActiveTextStyle),
              Text(date,style: isSelected?activeTextStyle:inActiveTextStyle)
            ],
          ),
        ),
      ),
    );
  }
}
