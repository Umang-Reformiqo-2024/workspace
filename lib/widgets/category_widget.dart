import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/widgets/text_widget.dart';

class CategoryItem extends StatelessWidget {
  final String svgAssetPath;
  final String label;
  final int index;
  final int selectedIndex;
  final void Function() onTap;

  const CategoryItem({
    super.key,
    required this.svgAssetPath,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
     return InkWell(
       splashFactory: NoSplash.splashFactory,
       onTap: onTap,
       child: Column(
        children: [
          SizedBox(
                height: 70,
                child: SvgPicture.asset(svgAssetPath)
            ),
          const SizedBox(height: 8,),
          TextWidget.simpleText(
            data: label,
            fontColor: index==selectedIndex ? AppColor.redTextPrimary : AppColor.blackTextPrimary,
            fontWeight: index==selectedIndex ? FontWeight.bold : FontWeight.normal,
            fontFamily: AppFont.primary,
            fontSize: 12
          ),
        ],
           ),
     );
  }
}