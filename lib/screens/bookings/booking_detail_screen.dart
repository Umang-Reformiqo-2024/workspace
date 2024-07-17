import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/bookings/booking_detail_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/app_bar.dart';

import '../../app_data/app_colors/app_color.dart';
import '../../app_data/app_fonts/app_font.dart';

class BookingDetailScreen extends StatelessWidget {
  final String heroTag;
  const BookingDetailScreen({super.key, required this.heroTag});


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return GetBuilder(
      init: BookingDetailScreenController(),
      builder: (controller) {
      return SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        appBar: WorkSpaceCoAppBar(title: "Booking Detail",),
        body: Column(
          children: [
            Hero(
              tag: heroTag,
              child: BookingCard(),
            )
          ],
        ),
      ));
    },);
  }
}

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 5, 10, 4),
        padding: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 1),
                  blurRadius: 2,
                  spreadRadius: 1
              )
            ],
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 70,
                    width: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Color(0xFF525151),
                          Color(0xFF262626)
                        ])),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/v2/png/location_1.webp"),
                    )
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pitch - Conference Room \n10 Seater",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              fontFamily: AppFont.primary,
                              color: Color(0xFF2D2D2D)),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "WorkSpaceCo. City Center",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFont.primary,
                              color: Color(0xFF2D2D2D)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date",style: TextStyle(color: AppColor.black5D5D5D),),
                      Text("20-06-2024",style: TextStyle(color: AppColor.blackText,fontWeight: FontWeight.w700),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Time",style: TextStyle(color: AppColor.black5D5D5D),),
                      Text("12:00 - 12:30",style: TextStyle(color: AppColor.blackText,fontWeight: FontWeight.w700),),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Duration",style: TextStyle(color: AppColor.black5D5D5D),),
                      Text("30 Mins",style: TextStyle(color: AppColor.blackText,fontWeight: FontWeight.w700),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
