import 'package:flutter/material.dart';
import 'package:fw_tab_bar/fw_tab_bar.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/community/community_screen_controller.dart';

import '../../widgets/common_widgets/app_bar.dart';
class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CommunityScreenController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFEBEBEB),
          appBar: WorkSpaceCoAppBar(title: "Community",titleSize: 20,),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: TabBarWidget(
                  firstTab: "Companies",
                  secondTab: "Users",
                  onTabChanged: (value) {
                    print("===[$value]===");
                    controller.onChangeTab(value: value);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.055),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, -1)
                    ),
                  ],
                ),
                child:Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 5,
                        width: 70,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFF464646),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 25, 15, 15),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFD0D0D0).withOpacity(0.3),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.black)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black)
                          ),
                          labelText: "Search",
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          alignLabelWithHint: true,
                          suffixIcon: const Icon(Icons.search),
                          contentPadding: const EdgeInsets.only(left: 30)

                        ),
                      ),
                    ),
                    // const Divider(color: Colors.black26,indent: 10,endIndent: 10,)
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => controller.onTapCompanyItem(),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Divider(color: Colors.black26,indent: 10,endIndent: 10,),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: const LinearGradient(colors: [Color(0xFF525151),Color(0xFF262626)])
                                ),
                                child: const Icon(Icons.image_outlined,color: Colors.white,),
                              ),
                              Text(controller.selectedTabIndex==1?"Company Name ${index+1}":"User Name ${index+1}",style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppFont.primary,
                                color: Color(0xFF2D2D2D)
                              ),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },),
              )
            ],
          ),
        ),
      ),
    );
  }
}
