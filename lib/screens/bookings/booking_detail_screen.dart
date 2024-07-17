import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/bookings/booking_detail_screen_controller.dart';
import 'package:workspace/screens/bookings/successful_payment_screen.dart';
import 'package:workspace/widgets/common_widgets/app_bar.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

import '../../app_data/app_colors/app_color.dart';
import '../../app_data/app_fonts/app_font.dart';

class BookingDetailScreen extends StatelessWidget {
  final String heroTag;
  final String bookingType;
  const BookingDetailScreen({super.key, required this.heroTag, required this.bookingType});


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
        body: ListView(
          padding: const EdgeInsets.only(left: 20,right: 20),
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0, 0),
                      blurRadius: 4,
                      spreadRadius: 1
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: heroTag,
                    child: Material(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 120,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: const Offset(1, 1),
                                      blurRadius: 4,
                                      spreadRadius: 2
                                  )
                                ],
                                borderRadius: const BorderRadius.all(Radius.circular(10))
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: bookingType=="History"?Image.asset("assets/v2/png/location_2.webp"): Image.asset("assets/v2/png/location_1.webp"),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(bookingType=="History"?
                                "Pitch - Conference Room \n10 Seater" : "Hi-Five - Conference Room 5 Seater",style: TextStyle(fontSize: 18,color: AppColor.black,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
                                SizedBox(height: 5,),
                                Text("WorkSpaceCo. City Center",style: TextStyle(fontSize: 14,color: Color(0xFF575757),fontWeight: FontWeight.normal,fontFamily: AppFont.primary),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Divider(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8,top: 10),
                    child: Text("Date",style: TextStyle(color: Color(0xFF6D6D6D)),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text("20-06-2024",style: TextStyle(color: Color(0xFF000000)),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8,top: 10),
                    child: Text("Time",style: TextStyle(color: Color(0xFF6D6D6D)),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text("06:00 - 08:00",style: TextStyle(color: Color(0xFF000000)),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8,top: 10),
                    child: Text("People",style: TextStyle(color: Color(0xFF6D6D6D)),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text("7",style: TextStyle(color: Color(0xFF000000)),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8,top: 10),
                    child: Text("The booking price is 0.5 ⭐ Credits per 30 minutes ",style: TextStyle(color: Color(0xFF6D6D6D),fontSize: 10),),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 0),
                        blurRadius: 4,
                        spreadRadius: 1
                    )
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Price Summary",style: TextStyle(color: Color(0xFF6D6D6D),fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Used Credits (120 / 30 x 0.5 ⭐)",style: TextStyle(color: Color(0xFF6D6D6D)),),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("",style: TextStyle(color: Color(0xFF000000)),),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("- 2 ⭐",style: TextStyle(color: Color(0xFF000000)),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bookingType=="Upcoming"?
            const Padding(
              padding: EdgeInsets.only(left: 8,top: 20),
              child: Text("If you cancel this booking anytime before a starting time, 100% of credits will be refunded",style: TextStyle(color: Color(0xFF6D6D6D),fontSize: 10),),
            ):SizedBox.shrink(),

          ],
        ),
        bottomNavigationBar: bookingType=="Upcoming"? AppButtonPrimary(onTap: () {
         // Get.to(()=> const SuccessfulPaymentScreen(),duration: const Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);
        }, text: "Cancel Booking"):SizedBox.shrink(),
      ));
      },
    );
  }
}

