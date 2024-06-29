import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/home/wsc_location_detail_screen_controller.dart';
import 'package:workspace/screens/community/community_screen.dart';
import 'package:workspace/screens/event_screen/event_screen.dart';
import 'package:workspace/screens/feed/feed_screen.dart';
import 'package:workspace/screens/home/item_list_screen.dart';
import 'package:workspace/screens/visitor/visitor_screen.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

class WscLocationDetailScreen extends StatelessWidget {
  const WscLocationDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: WscLocationDetailScreenController(),
      builder: (controller) => SafeArea(
          child: DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Scaffold(
              backgroundColor: Color(0xFFEBEBEB),
              appBar: AppBar(
                forceMaterialTransparency: true,
                //title: const Text("WorkSpaceCo. City Center",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
                backgroundColor: Colors.white,
                //centerTitle: true,
                actions: const [Icon(Icons.message_outlined),SizedBox(width: 10,),Icon(Icons.info_outline),SizedBox(width: 10,)],

              ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text("WorkSpaceCo. City Center",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 30),
                  child: SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
                          child: SizedBox(width: 100,child: AppButtonPrimary(onTap: () {Get.to(CommunityScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Community",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
                          child: SizedBox(width: 100,child: AppButtonPrimary(onTap: () {Get.to(FeedScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Feed",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 2, 5, 2),
                          child: SizedBox(width: 100,child: AppButtonPrimary(onTap: () {Get.to(EventScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Events",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 2, 10, 2),
                          child: SizedBox(width: 100,child: AppButtonPrimary(onTap: () {Get.to(VisitorScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);}, text: "Visitor",buttonMargin: EdgeInsets.zero,buttonHeight: 40,textSize: 14,)),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.055),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, -1)
                      ),
                    ],
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 5,
                      width: 70,
                      decoration: BoxDecoration(
                          color: const Color(0xFF464646),
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
                ColoredBox(
                  color: Colors.white,
                  child: TabBar(
                    isScrollable: true,
                    splashFactory: NoSplash.splashFactory,
                    automaticIndicatorColorAdjustment: true,
                    tabAlignment: TabAlignment.start,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.red,
                    tabs: [
                      Tab(text: 'Meeting Room',icon: Center(child: Image.asset("assets/v2/png/cat_meeting_room.webp",height: 50,width: 50,),),),
                      Tab(text: 'Desk',icon: Center(child: Image.asset("assets/v2/png/cat_desk.webp",height: 50,width: 50,),),),
                      Tab(text: 'Cabin',icon: Center(child: Image.asset("assets/v2/png/cat_cabin.webp",height: 50,width: 50,),),),
                      Tab(text: 'Shop',icon: Center(child: Image.asset("assets/v2/png/cat_shop.webp",height: 50,width: 50,),),),
                      // Tab(text: 'Community',icon: Center(child: Image.asset("assets/v2/png/cat_community.webp",height: 50,width: 50,),),),
                      // Tab(text: 'Feed',icon: Center(child: Image.asset("assets/v2/png/cat_feed.webp",height: 50,width: 50,),),),
                      // Tab(text: 'Visitor',icon: Center(child: Image.asset("assets/v2/png/cat_visitors.webp",height: 50,width: 50,),),),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                    const ItemListScreen(),
                    Center(child: Image.asset("assets/v2/png/cat_desk.webp")),
                    Center(child: Image.asset("assets/v2/png/cat_cabin.webp")),
                    Center(child: Image.asset("assets/v2/png/cat_shop.webp")),
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
