import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/bookings/review_and_pay_screen_controller.dart';
import 'package:workspace/screens/bookings/successful_payment_screen.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

import '../../widgets/common_widgets/app_bar.dart';

class ReviewAndPayScreen extends StatelessWidget {
  const ReviewAndPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ReviewAndPayScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: const Color(0xFFEBEBEB),
              appBar: WorkSpaceCoAppBar(title: "Review and Pay",titleSize: 20,),
              body: ListView(
                padding: const EdgeInsets.only(left: 20,right: 20),
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFDFDFD),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFCACACA))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/v2/png/location_3.webp",fit: BoxFit.fill,),
                              ),
                            ),
                            const Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pitch - Conference Room 10 Seater",style: TextStyle(fontSize: 18,color: AppColor.black,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
                                  SizedBox(height: 5,),
                                  Text("WorkSpaceCo. City Center",style: TextStyle(fontSize: 14,color: Color(0xFF575757),fontWeight: FontWeight.normal,fontFamily: AppFont.primary),),
                                ],
                              ),
                            )
                          ],
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
                      color: const Color(0xFFFDFDFD),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFCACACA))
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
                              child: Text("Available Credits",style: TextStyle(color: Color(0xFF6D6D6D)),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text("Required Credits (120 / 30 x 0.5 ⭐)",style: TextStyle(color: Color(0xFF6D6D6D)),),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text("Remaining Credits",style: TextStyle(color: Color(0xFF6D6D6D)),),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text("10 ⭐",style: TextStyle(color: Color(0xFF000000)),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text("- 2 ⭐",style: TextStyle(color: Color(0xFF000000)),),
                            ),
                            Divider(),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(" 8 ⭐",style: TextStyle(color: Color(0xFF000000)),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              bottomNavigationBar: AppButtonPrimary(onTap: () {
                Get.to(()=> const SuccessfulPaymentScreen(),duration: const Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);
              }, text: "Pay Now"),
        ));
      },
    );
  }
}
