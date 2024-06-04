import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/widgets/text_widget.dart';

class RecommendedSpaceItem extends StatelessWidget {
  final String pngAssetPath;
  final String title;
  final String description;
  final Widget favIcon;
  final void Function() onTapItem;
  final void Function() onTapFavIcon;

  RecommendedSpaceItem({
    required this.pngAssetPath,
    required this.title,
    required this.description,
    required this.favIcon,
    required this.onTapItem,
    required this.onTapFavIcon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100]
      ),
      child: InkWell(
        onTap: () => onTapItem(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                    items: List.generate(5, (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        pngAssetPath,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),),
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      aspectRatio: 16/9,

                    ),
                ),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child: Image.asset(
                //     pngAssetPath,
                //     width: double.infinity,
                //     height: 200,
                //     fit: BoxFit.fill,
                //   ),
                // ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: InkWell(
                    onTap: () => onTapFavIcon(),
                    child: Container(
                        height: 35,
                        width: 35,
                        child: favIcon),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextWidget.simpleText(data: title,fontFamily: AppFont.primary,fontSize: 16,fontWeight: FontWeight.bold,fontColor: AppColor.blackTextPrimary),
            TextWidget.simpleText(data: description,fontFamily: AppFont.primary,fontSize: 14,fontWeight: FontWeight.normal,fontColor: AppColor.blackText),
            const SizedBox(height: 8,)
          ],
        ),
      ),
    );
  }
}