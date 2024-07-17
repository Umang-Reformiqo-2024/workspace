import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/cafe_shop/shop_home_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/app_bar.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ShopHomeScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: Colors.white,
          appBar: WorkSpaceCoAppBar(
            title: "Cafeteria",
            titleActions: [
              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/v2/png/shop_icon.webp", height: 24),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () {},
                child: Image.asset("assets/v2/png/shop_history_icon.webp",
                    height: 24),
              ),
              const SizedBox(width: 20),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(12),
            child: ListView(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                    return Container(height: 30,color: Color(0xFF2F2F2F),);
                  },),
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
