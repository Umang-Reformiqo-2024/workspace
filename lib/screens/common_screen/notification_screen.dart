import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/common_screen/notification_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

import '../../widgets/common_widgets/app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NotificationScreenController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: WorkSpaceCoAppBar(title: "Notification.",titleSize: 20,titleActions: [],),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child:
            controller.isShowNotifications
                ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: const Color(0xFFCACACA))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF525151),
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: const Icon(Icons.image_outlined,color: Colors.white,),
                                  ),
                                  const SizedBox(width: 10,),
                                  const Expanded(
                                    child: Text("10 Credits added to your wallet successfully",style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),),
                                  )
                                ],),
                                const SizedBox(height: 5,),
                                const Text("10 Credits Added to your wallet using Credit Card with ending number 4895 was successfully"),
                                const Divider(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Today, 10 mins ago"),
                                    SizedBox(width: 90,child: AppButtonPrimary(onTap: () {}, text: "View",buttonHeight: 30,textSize: 14,buttonMargin: const EdgeInsets.only(top: 5),)),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },),
                )

              ],
            )
                : const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black,fontFamily: AppFont.primary),),
                SizedBox(height: 250,),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Icon(Icons.notifications_active_outlined),
                      SizedBox(height: 20,),
                      Text("No Notification",style: TextStyle(
                        fontFamily: AppFont.primary,
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                      Text("There is nothing to show you right now",style: TextStyle(
                        fontFamily: AppFont.primary,
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Center(child: SizedBox(width: 300,child: LinearProgressIndicator(color: Color(0xFF2F2F2F),backgroundColor: Colors.black12,)))
              ],
            ),
          ),
        ));
      },
    );
  }
}
