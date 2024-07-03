import 'package:flutter/material.dart';

class IntroductionIndicatorWidget extends StatelessWidget {
  bool isDarken;
  IntroductionIndicatorWidget({super.key,required this.isDarken});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 16,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          color:isDarken? const Color(0xFF414141) : const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
