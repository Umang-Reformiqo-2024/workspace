import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/item_detail_controller.dart';
import 'package:workspace/model/home_item_model_class.dart';
import 'package:workspace/widgets/button_widget.dart';
import 'package:workspace/widgets/date_card_widget.dart';
import 'package:workspace/widgets/recommended_space_widget.dart';

import '../app_data/app_colors/app_color.dart';

class ItemDetailScreen extends StatelessWidget {
  HomeItemModelClass itemDetail;
  String heroTag;
  ItemDetailScreen({super.key,required this.itemDetail,required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ItemDetailController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: Padding(padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Material(
          color: Colors.transparent,
                child: RecommendedSpaceItem(
                  heroTag: heroTag,
                  pngAssetPath: itemDetail.pngAssetPath,
                  title: itemDetail.title,
                  description: itemDetail.subTitle,
                  favIcon: Icon(itemDetail.isFavourite?Icons.favorite_outlined:Icons.favorite_outline_sharp,color:itemDetail.isFavourite?AppColor.red: Colors.white,),
                  onTapItem: () {},
                  onTapFavIcon: () {},),
              ),
              const SizedBox(height: 10,),
              const Divider(),
              const Row(
                children: [
                  Text("Select Date",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFont.primary,
                    fontSize: 20
                  ),),
                  Spacer(),
                  Icon(Icons.date_range_outlined,color: Colors.black,),
                  SizedBox(width: 5,),
                  Text("June 2025",style: TextStyle(
                    fontSize: 18,
                    fontFamily: AppFont.primary
                  ),)
                ],
              ),
              const Divider(),
              SizedBox(
                height: 75,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.bookingDateList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisSpacing: 15,childAspectRatio: 16/12),
                  itemBuilder: (context, index) => DateCardWidget(onTap: () => controller.onTapDateSelection(index: index), isSelected: controller.bookingDateList[index].isSelected, date: "${controller.bookingDateList[index].date}", day: "${controller.bookingDateList[index].day}"),),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     DateCardWidget(onTap: () {
              //       debugPrint("====[F]======");
              //     }, isSelected: false, date: "Mon", day: "05"),
              //     DateCardWidget(onTap: () {
              //       debugPrint("====[T]======");
              //     }, isSelected: true, date: "Mon", day: "05"),DateCardWidget(onTap: () {
              //       debugPrint("====[F]======");
              //     }, isSelected: false, date: "Mon", day: "05"),
              //   ],
              // ),
              const Divider(),
              Spacer(),
              ButtonWidget.primaryButton(text: Text("Book Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),), onTap: () {},),
              SizedBox(height: 50,)
            ],
          ),
          ),
        ));
      },
    );
  }
}
