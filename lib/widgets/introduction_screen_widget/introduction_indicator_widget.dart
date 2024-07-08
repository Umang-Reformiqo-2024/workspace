import 'package:flutter/material.dart';

class IntroductionIndicatorWidget extends StatelessWidget {
  bool isDarken;
  IntroductionIndicatorWidget({super.key,required this.isDarken});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      width: 16,
      margin: const EdgeInsets.only(left: 2, right: 2),
      decoration: BoxDecoration(
          color: isDarken ? Colors.transparent : const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(100)),
      child: AnimatedOpacity(
          opacity: isDarken?1:0,
        duration: const Duration(milliseconds: 500),
        child: AnimatedSlide(
          offset: isDarken ? const Offset(0, 0) : const Offset(-4, 0),
          duration: const Duration(milliseconds: 500),
          child: Container(
            height: 16,
            width: 16,
            // margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                color:isDarken? const Color(0xFF414141) : const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ),
    );
  }
}
