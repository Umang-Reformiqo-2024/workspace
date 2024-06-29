import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/event_screen_controller/event_screen_controller.dart';

import '../../app_data/app_colors/app_color.dart';
import '../../app_data/app_fonts/app_font.dart';
import '../../widgets/common_widgets/app_bar.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: EventScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: Colors.white,
              appBar: WorkSpaceCoAppBar(title: "Events",titleSize: 20,),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFCACACA)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset("assets/v2/png/location_2.webp")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Join Us for an Inspiring TED Talk Event!",
                        style: TextStyle(
                            fontFamily: AppFont.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                color: AppColor.red,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          Text(
                            "20th May 2024",
                            style: TextStyle(
                                fontFamily: AppFont.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.only(left: 20,right: 5),
                            decoration: BoxDecoration(
                                color: AppColor.red,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                          Text(
                            "5:00 pm - 7:00 pm",
                            style: TextStyle(
                                fontFamily: AppFont.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8),child: Text("Are you ready to be inspired and gain new insights into the future of work? We are thrilled to announce a TED Talk event that you won't want to miss! Join us for an evening of captivating talks, thought-provoking discussions, and networking with like-minded individuals."),)
                  ],
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColor.blackText,
            shape: const OvalBorder(),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ));
      },
    );
  }
}
