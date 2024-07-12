import 'package:flutter/material.dart';
import 'package:flutter_faq/flutter_faq.dart';
import 'package:fw_tab_bar/fw_tab_bar.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/common_screen/help_and_support_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

import '../../app_data/app_fonts/app_font.dart';
import '../../widgets/common_widgets/app_bar.dart';

class HelpAndSupportScreen extends StatelessWidget {
  HelpAndSupportScreen({super.key});
  String data = """"
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""";

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HelpAndSupportScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
                appBar: WorkSpaceCoAppBar(title: "Help & Support",titleSize: 20,titleActions: const [],),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: TabBarWidget(
                      firstTab: "FAQs",
                      secondTab: "Rise Ticket",
                      onTabChanged: (value) {
                        print("===[$value]===");
                        controller.onChangeTab(value: value);
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.only(top: 10),
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
                      child: ColoredBox(
                        color: Colors.white,
                        child: controller.selectedTabIndex==1
                            ? ListView.builder(
                          itemCount: 30,
                          itemBuilder: (context, index) {
                            return FAQ(
                              question: "Question ${index+1} is here",
                              answer: data,
                              ansDecoration: const BoxDecoration(),
                              queDecoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow:index==0?[]: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: const Offset(0, -0.5),
                                      blurRadius: 2,
                                      spreadRadius: 0.5
                                  )
                                ],
                              ),
                              queStyle: const TextStyle(fontFamily: AppFont.primary,fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xFF2F2F2F)),
                              ansStyle: const TextStyle(fontFamily: AppFont.primary,fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF2F2F2F)),
                              collapsedIcon: const Icon(Icons.keyboard_arrow_down) ,
                              expandedIcon: const Icon(Icons.keyboard_arrow_up) ,
                              showDivider: false,
                            );
                          },
                        )
                            : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Hello Username,",style: TextStyle(fontSize: 20,fontFamily: AppFont.primary,fontWeight: FontWeight.bold),),
                                const Text("How can we help you today ?",style: TextStyle(fontSize: 16,fontFamily: AppFont.primary,fontWeight: FontWeight.w500),),
                                const SizedBox(height: 30,),
                                const Text("Write a descriptive title",style: TextStyle(fontFamily: AppFont.primary),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      hintText: "Subject",
                                      hintStyle: const TextStyle(fontSize: 14,fontFamily: AppFont.primary,fontWeight: FontWeight.normal,color: Color(0xFF838383)),
                                      contentPadding: const EdgeInsets.only(left: 20),
                                      fillColor: const Color(0xFFFAFAFA),
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                const Text("Explain the problem",style: TextStyle(fontFamily: AppFont.primary),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: TextField(
                                    minLines: 5,
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      filled: true,
                                      hintText: "Write your concern",
                                      hintStyle: const TextStyle(fontSize: 14,fontFamily: AppFont.primary,fontWeight: FontWeight.normal,color: Color(0xFF838383)),
                                      contentPadding: const EdgeInsets.only(left: 20,top: 20),
                                      fillColor: const Color(0xFFFAFAFA),
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 170,
                                  height: 70,
                                  child: AppButtonPrimary(onTap: () {

                                  }, text: "Submit Ticket",textSize: 18,buttonMargin: const EdgeInsets.only(top: 20),),
                                ),
                                const SizedBox(height: 10,),
                                const Divider(),
                                InkWell(
                                  onTap:() => controller.onTapActiveTicketSection(),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.sticky_note_2_outlined),
                                      const SizedBox(width: 10,),
                                      const Text("Active Tickets"),
                                      const Spacer(),
                                      IconButton(onPressed: () => controller.onTapActiveTicketSection(), icon:Icon(controller.isActiveTicketOpen?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down))
                                    ],
                                  ),
                                ),
                                if (controller.isActiveTicketOpen)
                                  Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.white54,
                                              Colors.grey.withOpacity(0.5),
                                              Colors.grey.withOpacity(0.7),
                                              Colors.grey.withOpacity(0.9),
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter
                                        ),
                                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                                    ),
                                    child: const Center(child: Text("You have NO Active Tickets",style: TextStyle(color:  Colors.white,fontWeight: FontWeight.bold),),),
                                  )
                                else const SizedBox.shrink(),
                                const SizedBox(height: 10,),
                                const Divider(),
                                InkWell(
                                  onTap:() => controller.onTapResolvedTicketSection(),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.verified_user_outlined),
                                      const SizedBox(width: 10,),
                                      const Text("Resolved Tickets"),
                                      const Spacer(),
                                      IconButton(onPressed: () => controller.onTapResolvedTicketSection(), icon:Icon(controller.isResolvedTicketOpen?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down))
                                    ],
                                  ),
                                ),
                                if (controller.isResolvedTicketOpen)
                                  Container(
                                    height: 150,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.white54,
                                              Colors.grey.withOpacity(0.5),
                                              Colors.grey.withOpacity(0.7),
                                              Colors.grey.withOpacity(0.9),
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter
                                        ),
                                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                                    ),
                                    child: const Center(child: Text("You have NO Resolved Tickets",style: TextStyle(color:  Colors.white,fontWeight: FontWeight.bold),),),
                                  )
                                else const SizedBox.shrink(),
                                const SizedBox(height: 10,),
                                const Divider()
                              ],
                            ),
                          ),
                        ),
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
                  ),

                ],
              )));
      },
    );
  }
}
