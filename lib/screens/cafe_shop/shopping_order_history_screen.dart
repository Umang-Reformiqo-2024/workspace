import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/cafe_shop/shop_home_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/app_bar.dart';

class ShoppingOrderHistoryScreen extends StatelessWidget {
  const ShoppingOrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ShopHomeScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: WorkSpaceCoAppBar(
                title: "History",
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: const Color(0xFFFFFFFF)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(1, 1),
                                blurRadius: 4,
                                spreadRadius: 2
                            )
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF2F2F2F),
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(image: AssetImage("assets/v2/png/coffee_shop_img.webp"))
                                ),
                              ),Container(
                                height: 30,
                                width: 80,
                                margin: const EdgeInsets.only(left: 10,top: 5),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF2F2F2F),
                                    borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Center(
                                  child: Text("Delivered",style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20,),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Token No:",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("Date:"),
                                // Text("Order id"),
                                // Text("Payment id"),
                                Text("Total Items"),
                                Text("Total Price"),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(": 1807-1",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text(": 18-07-2024"),
                                // Text(": OID1807"),
                                // Text(": PID1807"),
                                Text(": 2"),
                                Text(": \u20B9 600"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },),
              ),
            ));
      },
    );
  }
}

