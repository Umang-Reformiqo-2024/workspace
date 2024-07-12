import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/controller/feed/feed_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

import '../../widgets/common_widgets/app_bar.dart';
class AddNewFeedScreen extends StatelessWidget {
  const AddNewFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: FeedScreenController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: WorkSpaceCoAppBar(title: "Add New Feed",titleSize: 20,),
            body: Column(
              children: [
                Container(
                  height: 250,
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 1),
                            blurRadius: 4,
                            spreadRadius: 2
                        )
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(20))
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.image_outlined,color: AppColor.black,size: 50,),
                        ),
                        Text("Select any one image by taping here.")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 2
                          )
                        ],
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write somthing here..."
                      ),
                      // expands: true,
                      maxLines: 15,
                      minLines: 10,
                    )
                  ),
                ),
              ],
            ),
            bottomNavigationBar: AppButtonPrimary(onTap: () {
              Get.back();
            }, text: "Post",buttonHeight: 50,),
          ),
        );
      },
    );
  }
}
