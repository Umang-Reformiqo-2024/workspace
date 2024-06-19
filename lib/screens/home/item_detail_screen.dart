import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/home/item_detail_controller.dart';
import 'package:workspace/model/home_item_model_class.dart';
import 'package:workspace/screens/bookings/booking_schedule_screen.dart';
import 'package:workspace/widgets/button_widget.dart';
import 'package:workspace/widgets/recommended_space_widget.dart';

import '../../app_data/app_colors/app_color.dart';

class ItemDetailScreen extends StatelessWidget {
  final HomeItemModelClass itemDetail;
  final String heroTag;
  const ItemDetailScreen({super.key,required this.itemDetail,required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ItemDetailController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text("Details"),
            centerTitle: true,
          ),
          body: Padding(padding: const EdgeInsets.all(8),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        children: [
                          Text("0.5 CREDITS ",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("per 30 min"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      children: [
                        Row(children: [Icon(Icons.star,color: Color(0xFFFFB61D),size: 18,),SizedBox(width: 5,),Text("4.9",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)],),
                        Text("Review",style: TextStyle(fontSize: 12),),
                      ],
                    )
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Align(alignment: Alignment.center,child: ButtonWidget.primaryButton(text: const Text("Reserve",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),), onTap: () {
                Get.to(const BookingScheduleScreen(),transition: Transition.cupertino,duration: const Duration(milliseconds: 700),curve: Curves.easeIn);
              },)),
              const SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFDFDFD),
                  border: Border.all(color: const Color(0xFFB5B5B5)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start
                  ,
                  children: [
                    Text("Overview",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
                    SizedBox(height: 10,),
                    Text("• Minimum booking time is 30 mins. \n• Maximum booking time is 2 hours \n• Room can fit upto 4 people. \n• Booking cancelled any time before starting time will be refunded",
                      style: TextStyle(fontSize: 14,height: 2,wordSpacing: 2,fontWeight: FontWeight.normal,fontFamily: AppFont.primary),),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Common Facilities",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
              const SizedBox(height: 10,),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                  return Container(
                    height: 30,
                    width: 90,
                    margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFEFEF),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: const Color(0xFFA6A6A6))
                    ),
                    child: Center(child: Text("Feature ${index+1}"),),
                  );
                },),
              )
            ],
          ),
          ),
        ));
      },
    );
  }
}
