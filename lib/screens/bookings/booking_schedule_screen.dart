import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/controller/bookings/booking_schedule_screen_controller.dart';
import 'package:workspace/screens/bookings/review_and_pay_screen.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

import '../../widgets/common_widgets/app_bar.dart';

class BookingScheduleScreen extends StatelessWidget {
  const BookingScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BookingScheduleScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: Colors.white,
              appBar: WorkSpaceCoAppBar(title: "Schedule Your Booking",titleSize: 20,),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [

                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("No. of People"),
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
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
                      child:  CustomDropdown<String>(
                        hintText: 'Select People',
                        items: controller.noOfPeopleList,
                        initialItem: controller.noOfPeopleList[0],
                        decoration: const CustomDropdownDecoration(
                          prefixIcon: Icon(Icons.person),
                        ),
                        onChanged: (value) {
                          log('changing value to: $value');
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Select Date and Time Slot"
                      ),
                    ),
                    // Divider(),
                    Container(
                      height: 80,
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
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      padding: const EdgeInsets.only(right: 5,bottom: 3,top: 5,left: 5),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.dates.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () =>
                                controller.onTapDateSelection(index: index),
                            child: Container(
                              width: 70,
                              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                              decoration: BoxDecoration(
                                  color: controller.dates[index].isSelected
                                      ? const Color(0xFF2F2F2F).withOpacity(0.8)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: AppColor.black)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        controller.dates[index].date.toString(),
                                        style: TextStyle(
                                            color: controller
                                                    .dates[index].isSelected
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        controller.dates[index].month
                                            .toString(),
                                        style: TextStyle(
                                            color: controller
                                                    .dates[index].isSelected
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    controller.dates[index].day.toString(),
                                    style: TextStyle(
                                        color:
                                            controller.dates[index].isSelected
                                                ? Colors.white
                                                : Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Divider(),
                    Container(
                      height: 40,
                      margin: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(color: Colors.black)),
                              ),
                              const Text("Available"),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xFFE2E2E2),
                                    borderRadius: BorderRadius.circular(100),
                                    border:
                                        Border.all(color: const Color(0xFFE2E2E2))),
                              ),
                              const Text("Unavailable"),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF303030),
                                    borderRadius: BorderRadius.circular(100),
                                    border:
                                        Border.all(color: const Color(0xFF303030))),
                              ),
                              const Text("Selected"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 0,
                                crossAxisSpacing: 0,
                                mainAxisExtent: 60),
                        itemCount: controller.timeSlots.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => controller.onTapTimeSlots(index: index),
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                              decoration: BoxDecoration(
                                  color:
                                  controller.timeSlots[index].isSelected
                                      ? const Color(0xFF303030)
                                      : controller.timeSlots[index].isAvailable
                                      ? Colors.white 
                                      : const Color(0xFFE2E2E2),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: controller.timeSlots[index].isAvailable
                                        ? Colors.black
                                        : const Color(0xFFE2E2E2),
                                  )),
                              child: Center(
                                  child: Text(
                                      controller.timeSlots[index].time ?? "",
                                    style: controller.timeSlots[index].isSelected
                                        ? const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 12)
                                        : const TextStyle(color: Color(0xFF303030), fontWeight: FontWeight.normal,fontSize: 10),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
              bottomNavigationBar: AppButtonPrimary(onTap: () => Get.to(()=> const ReviewAndPayScreen(),duration: const Duration(milliseconds: 700),transition: Transition.cupertino,curve: Curves.easeInOut), text: "Book Now"),
        ));
      },
    );
  }
}
