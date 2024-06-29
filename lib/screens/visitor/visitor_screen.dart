import 'package:flutter/material.dart';
import 'package:fw_tab_bar/fw_tab_bar.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/visitor/visitor_screen_controller.dart';
import 'package:workspace/screens/visitor/add_new_visit_screen.dart';

import '../../app_data/app_fonts/app_font.dart';
import '../../widgets/common_widgets/app_bar.dart';

class VisitorScreen extends StatelessWidget {
  const VisitorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: VisitorScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: const Color(0xFFEBEBEB),
              appBar: WorkSpaceCoAppBar(title: "Visitors",titleSize: 20,),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: TabBarWidget(
                  firstTab: "Visits",
                  secondTab: "Requests",
                  onTabChanged: (value) {
                    print("===[$value]===");
                    controller.onChangeTab(value: value);
                  },
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12.withOpacity(0.055),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, -1)),
                  ],
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 5,
                        width: 70,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFF464646),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    // const Divider(color: Colors.black26,indent: 10,endIndent: 10,)
                  ],
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => controller.onTapCompanyItem(),
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                          padding: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border:
                                  Border.all(color: const Color(0xFFCACACA))),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: const LinearGradient(colors: [
                                      Color(0xFF525151),
                                      Color(0xFF262626)
                                    ])),
                                child: const Icon(
                                  Icons.image_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Visitor ${index + 1}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                              fontFamily: AppFont.primary,
                                              color: Color(0xFF2D2D2D)),
                                        ),
                                        const Text(
                                          "Date : 18-06-2024",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: AppFont.primary,
                                              color: Color(0xFF2D2D2D)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Visitor id : vstr${index}dt1806t92",
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: AppFont.primary,
                                              color: Color(0xFF2D2D2D)),
                                        ),
                                        const Text(
                                          "Time : 9.00 - 2.00",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: AppFont.primary,
                                              color: Color(0xFF2D2D2D)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => Get.to(AddNewVisitScreen(),duration: Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino),
                backgroundColor: const Color(0xFF2F2F2F),
                shape: const CircleBorder(),
                child: const Icon(Icons.add,color: Colors.white,size: 30,),
              ),
        ));
      },
    );
  }
}
