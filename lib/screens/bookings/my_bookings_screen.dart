import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fw_tab_bar/fw_tab_bar.dart';
import 'package:get/get.dart';
import 'package:hyper_effects/hyper_effects.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/controller/bookings/my_bookings_screen_controller.dart';
import 'package:workspace/screens/bookings/booking_detail_screen.dart';
import 'package:workspace/widgets/common_widgets/app_bar.dart';
import 'package:workspace/widgets/common_widgets/app_navigator.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';
import '../../app_data/app_fonts/app_font.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MyBookingsScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: WorkSpaceCoAppBar(title: "My Bookings",titleSize: 20,),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: TabBarWidget(
                      firstTab: "Upcoming",
                      secondTab: "History",
                      onTabChanged: (value) {
                        print("===[$value]===");
                        controller.onChangeBookingTab(value: value);
                      },
                    ),
                  ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, -1),
                              blurRadius: 4,
                              spreadRadius: 2
                          )
                        ],
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                    ),
                    // child: Column(
                    //   children: [
                    //     Align(
                    //       alignment: Alignment.topCenter,
                    //       child: Container(
                    //         height: 5,
                    //         width: 70,
                    //         margin: const EdgeInsets.only(top: 10),
                    //         decoration: BoxDecoration(
                    //             color: const Color(0xFF464646),
                    //             borderRadius: BorderRadius.circular(30)),
                    //       ),
                    //     ),
                    //     // const Divider(color: Colors.black26,indent: 10,endIndent: 10,)
                    //   ],
                    // ),
                  ),
                  Expanded(
                    child: ColoredBox(
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
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
                                Hero(
                                  tag: "Booking_Hero_Tag_$index",
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Row(
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
                                              child:controller.bookingType=="History"?Image.asset("assets/v2/png/location_2.webp"): Image.asset("assets/v2/png/location_1.webp"),
                                            )
                                        ),
                                         Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(controller.bookingType=="History"?
                                                  "Pitch - Conference Room \n10 Seater" : "Hi-Five - Conference Room \n5 Seater",
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
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,bottom: 10),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
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
                                            SizedBox(width: 50,),
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Time",style: TextStyle(color: AppColor.black5D5D5D),),
                                                Text("12:00 - 12:30",style: TextStyle(color: AppColor.blackText,fontWeight: FontWeight.w700),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: AppButtonPrimary(onTap: () {
                                          AppNavigator.screenTo(screen: BookingDetailScreen(heroTag: "Booking_Hero_Tag_$index",bookingType: controller.bookingType,));
                                        }, text: "More Detail",buttonHeight: 40,textSize: 14,buttonMargin: EdgeInsets.zero,),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
        );
    },);
  }
}
