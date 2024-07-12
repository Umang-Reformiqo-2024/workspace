import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/event_screen_controller/event_screen_controller.dart';
import 'package:workspace/screens/bookings/successful_payment_screen.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

import '../../app_data/app_colors/app_color.dart';
import '../../app_data/app_fonts/app_font.dart';
import '../../widgets/common_widgets/app_bar.dart';

class EventDetailScreen extends StatelessWidget {
  String? hero_tag;

  EventDetailScreen({super.key, required this.hero_tag});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: EventScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: Colors.white,
          appBar: WorkSpaceCoAppBar(
            title: "Event Detail",
            titleSize: 20,
          ),
          body: ListView(
            children: [
              Hero(
                tag: hero_tag ?? "hero_tag",
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 0),
                              blurRadius: 4,
                              spreadRadius: 1)
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Image.asset(
                                "assets/v2/png/location_2.webp",
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              )),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
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
                          padding: const EdgeInsets.only(left: 8, bottom: 8),
                          child: Row(
                            children: [
                              Container(
                                height: 10,
                                width: 10,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    color: AppColor.red,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const Text(
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
                                margin:
                                    const EdgeInsets.only(left: 20, right: 5),
                                decoration: BoxDecoration(
                                    color: AppColor.red,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              const Text(
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
                        //const Padding(padding: EdgeInsets.all(8),child: Text("Are you ready to be inspired and gain new insights into the future of work? We are thrilled to announce a TED Talk event that you won't want to miss! Join us for an evening of captivating talks, thought-provoking discussions, and networking with like-minded individuals."),)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 0),
                          blurRadius: 4,
                          spreadRadius: 1)
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8, top: 8),
                      child: Text(
                        "About Event",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFont.primary),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Are you ready to be inspired and gain new insights "
                        "into the future of work? We are thrilled to announce a TED Talk event "
                        "that you won't want to miss! Join us for an evening of captivating talks, "
                        "thought-provoking discussions, and networking with like-minded individuals.",
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 0),
                          blurRadius: 4,
                          spreadRadius: 1)
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Key Notes",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFont.primary),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\u2022 Interactive Q&A sessions with each speaker.",
                    ),
                    Text(
                      "\u2022 Live polling on future technology predictions.",
                    ),
                    Text(
                      "\u2022 Group discussions on sustainable practices.",
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 0),
                          blurRadius: 4,
                          spreadRadius: 1)
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Registration Fees:",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFont.primary),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\u2022 2 Credits",
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar:
              AppButtonPrimary(onTap: () {
                showConfirmationDialogue();
              }, text: "Register Yourself"),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () {},
          //   backgroundColor: AppColor.blackText,
          //   shape: const OvalBorder(),
          //   child: const Icon(
          //     Icons.add,
          //     color: Colors.white,
          //   ),
          // ),
        ));
      },
    );
  }

  showConfirmationDialogue() {
    Get.dialog(
        useSafeArea: true,
        Material(
          color: Colors.transparent,
          child: Container(
                margin: const EdgeInsets.fromLTRB(12,310,12,310),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 0),
                  blurRadius: 4,
                  spreadRadius: 1)
            ],
            borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8, top: 8),
              child: Text(
                "Confirmation",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFont.primary),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Are you confirm to register yourself in this event ?",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Registration Fees : 2 Credits",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: AppButtonPrimary(onTap: () {
                      Get.back();
                    }, text: "Back",buttonMargin: EdgeInsets.zero,buttonHeight: 40,),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: AppButtonPrimary(onTap: () {
                      Get.back();
                      Get.off(()=> const SuccessfulPaymentScreen());
                    }, text: "Confirm",buttonMargin: EdgeInsets.zero,buttonHeight: 40,),
                  ),
                ],
              ),
            ),
          ],
                ),
              ),
        ));
  }
}
