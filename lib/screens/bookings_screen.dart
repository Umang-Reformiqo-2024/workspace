import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/bookings_controller.dart';
import 'package:workspace/controller/home_wrapper_controller.dart';
import 'package:workspace/widgets/button_widget.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BookingsController(),
      builder: (controller) {
        return DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: const Text("My Bookings"),
                backgroundColor: Colors.white,
                leadingWidth: 30,
                automaticallyImplyLeading: false,
                titleTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackTextPrimary,
                    fontSize: 22,
                    fontFamily: AppFont.primary),
                bottom: const TabBar(
                  isScrollable: true,
                  splashFactory: NoSplash.splashFactory,
                  // physics: NeverScrollableScrollPhysics(),
                  automaticIndicatorColorAdjustment: true,
                  tabAlignment: TabAlignment.start,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.red,
                  tabs: [
                    Tab(text: 'Upcoming'),
                    Tab(text: 'History'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: controller.homeController.meetingRoomItemList.length,
                    itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.black5D5D5D),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 90,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(controller.homeController.meetingRoomItemList[index].pngAssetPath)),
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(controller.homeController.meetingRoomItemList[index].title,style: TextStyle(color: AppColor.blackTextPrimary,fontFamily: AppFont.primary,fontSize: 18,fontWeight: FontWeight.bold),),
                                      Text(controller.homeController.meetingRoomItemList[index].subTitle,style: TextStyle(color: AppColor.blackTextPrimary,fontFamily: AppFont.primary,fontSize: 14,fontWeight: FontWeight.normal),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Date",style: TextStyle(fontSize: 14,fontFamily: AppFont.primary,color: Color(0xFF6D6D6D)),),
                                    Text("06-06-2024",style: TextStyle(fontSize: 14,color: AppColor.blackTextPrimary,fontFamily: AppFont.primary,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                ButtonWidget.primaryButton(text: Text("More Details",style: TextStyle(color: AppColor.whiteTextPrimary),),color: Color(0xFF2F2F2F), width: 100,height: 40,onTap: () {
                                  
                                },)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },),
                  ListView.builder(
                    itemCount: controller.homeController.officeSpaceItemList.length,
                    itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColor.black5D5D5D),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 90,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.asset(controller.homeController.meetingRoomItemList[index].pngAssetPath)),
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(controller.homeController.officeSpaceItemList[index].title,style: TextStyle(color: AppColor.blackTextPrimary,fontFamily: AppFont.primary,fontSize: 18,fontWeight: FontWeight.bold),),
                                      Text(controller.homeController.officeSpaceItemList[index].subTitle,style: TextStyle(color: AppColor.blackTextPrimary,fontFamily: AppFont.primary,fontSize: 14,fontWeight: FontWeight.normal),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Date",style: TextStyle(fontSize: 14,fontFamily: AppFont.primary,color: Color(0xFF6D6D6D)),),
                                    Text("01-06-2024",style: TextStyle(fontSize: 14,color: AppColor.blackTextPrimary,fontFamily: AppFont.primary,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                ButtonWidget.primaryButton(text: Text("More Details",style: TextStyle(color: AppColor.whiteTextPrimary),),color: Color(0xFF2F2F2F), width: 100,height: 40,onTap: () {
                                  debugPrint("More Detail of Booking BTN");
                                  QuickAlert.show(context: context, type: QuickAlertType.success);
                                },)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },),
                ],
              ),
            ));
      },
    );
  }
}
