import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/home/wsc_location_detail_screen_controller.dart';
import 'package:workspace/screens/community/community_screen.dart';
import 'package:workspace/screens/event_screen/event_screen.dart';
import 'package:workspace/screens/feed/feed_screen.dart';
import 'package:workspace/screens/home/item_list_screen.dart';
import 'package:workspace/screens/visitor/visitor_screen.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

import '../../widgets/common_widgets/app_bar.dart';

class WscLocationDetailScreen extends StatelessWidget {
  const WscLocationDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: WscLocationDetailScreenController(),
      builder: (controller) => SafeArea(
          child: DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Scaffold(
              // backgroundColor: const Color(0xFFEBEBEB),
              backgroundColor: Colors.white,
              appBar: WorkSpaceCoAppBar(title: "WorkSpaceCo. City Center",titleSize: 20,),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(child: AppButtonPrimary(onTap: () {Get.to(const CommunityScreen(),duration: const Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Community",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                      const SizedBox(width: 20,),
                      Expanded(child: AppButtonPrimary(onTap: () {Get.to(const FeedScreen(),duration: const Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Feed",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(child: AppButtonPrimary(onTap: () {Get.to(const EventScreen(),duration: const Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Events",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                      const SizedBox(width: 20,),
                      Expanded(child: AppButtonPrimary(onTap: () {Get.to(const VisitorScreen(),duration: const Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Visitor",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 20,bottom: 30),
                //   child: SizedBox(
                //     height: 50,
                //     child: ListView(
                //       scrollDirection: Axis.horizontal,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
                //           child: SizedBox(width: 100,child: AppButtonPrimary(onTap: () {Get.to(CommunityScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Community",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
                //           child: SizedBox(width: 100,child: AppButtonPrimary(onTap: () {Get.to(FeedScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Feed",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
                //           child: SizedBox(width: 100,child: AppButtonPrimary(onTap: () {Get.to(EventScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Events",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.fromLTRB(5, 2, 10, 2),
                //           child: SizedBox(width: 100,child: AppButtonPrimary(onTap: () {Get.to(VisitorScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Visitor",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                Container(
                  height: 20,
                  padding: const EdgeInsets.only(top: 10),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.055),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(0, -2)
                        ),
                      ],
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                  ),
                  // child: Align(
                  //   alignment: Alignment.topCenter,
                  //   child: Container(
                  //     height: 5,
                  //     width: 70,
                  //     decoration: BoxDecoration(
                  //         color: const Color(0xFF464646),
                  //       borderRadius: BorderRadius.circular(20)
                  //     ),
                  //   ),
                  // ),
                ),
                ColoredBox(
                  color: Colors.white,
                  child: TabBar(
                    onTap: (value) {
                      controller.onChangedTabBar(value);
                    },
                    isScrollable: false,
                    physics: const NeverScrollableScrollPhysics(),
                    splashFactory: NoSplash.splashFactory,
                    automaticIndicatorColorAdjustment: true,
                    tabAlignment: TabAlignment.fill,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.red,
                    padding: const EdgeInsets.only(bottom: 8),
                    tabs: [
                      Tab(text: 'Meeting Room',icon: Center(child: Image.asset("assets/v2/png/meeting_room_icon.webp",height: 50,width: 50,),),),
                      Tab(text: 'Desk',icon: Center(child: Image.asset("assets/v2/png/desk_icon.webp",height: 50,width: 50,),),),
                      Tab(text: 'Cabin',icon: Center(child: Image.asset("assets/v2/png/cabin_icon.webp",height: 50,width: 50,),),),
                      //Tab(text: 'Shop',icon: Center(child: Image.asset("assets/v2/png/shop_icon.webp",height: 50,width: 50,),),),
                      // Tab(text: 'Community',icon: Center(child: Image.asset("assets/v2/png/cat_community.webp",height: 50,width: 50,),),),
                      // Tab(text: 'Feed',icon: Center(child: Image.asset("assets/v2/png/cat_feed.webp",height: 50,width: 50,),),),
                      // Tab(text: 'Visitor',icon: Center(child: Image.asset("assets/v2/png/cat_visitors.webp",height: 50,width: 50,),),),
                    ],
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                    ItemListScreen(),
                    ItemListScreen(),
                    ItemListScreen(),
                    //Expanded(child: Image.asset("assets/v2/png/shop_image.webp",fit: BoxFit.fill,)),
                    // Center(child: Image.asset("assets/v2/png/cat_community.webp")),
                    // Center(child: Image.asset("assets/v2/png/cat_feed.webp")),
                    // Center(child: Image.asset("assets/v2/png/cat_visitors.webp")),
                  ]),
                ),
              ],
            ),
            //         body: Padding(
            // padding: EdgeInsets.all(10),
            // child: Column(
            //   children: [
            //     // Row(
            //     //   children: [
            //     //     Expanded(child: AppButtonPrimary(onTap: () {}, text: "Community",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
            //     //     SizedBox(width: 10,),
            //     //     Expanded(child: AppButtonPrimary(onTap: () {}, text: "Feed",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
            //     //     SizedBox(width: 10,),
            //     //     Expanded(child: AppButtonPrimary(onTap: () {}, text: "Visitor",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
            //     //   ],
            //     // ),
            //     TabBarView(children: [
            //       Center(child: Text("data"),),
            //       Center(child: Text("data_1"),)
            //     ])
            //     //Text("WorkSpaceCo. City Center",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppFont.primary,fontSize: 20),)
            //   ],
            // ),
            //         ),
             ),
          ),
      ),
    );
  }
}
