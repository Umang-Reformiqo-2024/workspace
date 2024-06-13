import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fw_tab_bar/fw_tab_bar.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/community/community_screen_controller.dart';
class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CommunityScreenController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFEBEBEB),
          appBar: AppBar(
            forceMaterialTransparency: true,
            backgroundColor: Colors.white,
            actions: const [Icon(Icons.message_outlined),SizedBox(width: 10,),Icon(Icons.info_outline),SizedBox(width: 10,)],
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabBarWidget(
                  firstTab: "TAB 1",
                  secondTab: "TAB 2",
                  onTabChanged: (value) {
                    print("===[$value]===");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
