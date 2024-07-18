import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/cafe_shop/shop_home_screen_controller.dart';
import 'package:workspace/screens/cafe_shop/shopping_cart_screen.dart';
import 'package:workspace/screens/cafe_shop/shopping_order_history_screen.dart';
import 'package:workspace/widgets/common_widgets/app_bar.dart';
import 'package:workspace/widgets/common_widgets/app_navigator.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

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
                onTap: () {
                  AppNavigator.screenTo(screen: ShoppingCartScreen());
                },
                child: Badge(smallSize: 10,label: Text("2"),child: Image.asset("assets/v2/png/shop_icon.webp", height: 24)),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  AppNavigator.screenTo(screen: ShoppingOrderHistoryScreen());
                },
                child: Image.asset("assets/v2/png/shop_history_icon.webp",
                    height: 24),
              ),
              const SizedBox(width: 20),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2F2F2F),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Text("Category",style: TextStyle(fontFamily: AppFont.primary,fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),),
                        ),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Recommended for you",style: TextStyle(fontWeight: FontWeight.bold,fontFamily:  AppFont.primary,fontSize: 15,color: Color(0xFF2F2F2F)
                  ),),
                ),
                const SizedBox(height: 10,),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Signature Hot Chocolate",style: TextStyle(
                                  color: Color(0xFF2F2F2F),
                                  fontSize: 18,
                                  fontFamily: AppFont.primary,
                                  fontWeight: FontWeight.bold
                                ),),
                                Text("\u20B9 305",style: TextStyle(
                                  color: Color(0xFF2F2F2F),
                                  fontSize: 15,
                                  fontFamily: AppFont.primary,
                                  fontWeight: FontWeight.bold
                                ),),
                                SizedBox(height: 5,),
                                Text("Four Cocoas and fresh steamed milk with whipped cream and chocolate powder. A timeless classic made to sweeten your spirits.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                  color: Color(0xFF2F2F2F),
                                  fontSize: 12,
                                  fontFamily: AppFont.primary,
                                  fontWeight: FontWeight.normal
                                ),),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 120,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2F2F2F),
                                  borderRadius: BorderRadius.circular(8),
                                  image: const DecorationImage(image: AssetImage("assets/v2/png/coffee_shop_img.webp"))
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                height: 30,
                                width: 120,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF2F2F2F),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(
                                  child: index%4==0?const Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                    Icon(Icons.remove,color: Colors.white,),
                                    Text("1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: AppFont.primary,),),
                                    Icon(Icons.add,color: Colors.white,),
                                  ],) :const Text("Add",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },),
                )
              ],
            ),
          ),
              bottomNavigationBar: AppButtonPrimary(onTap: () {
                AppNavigator.screenTo(screen: ShoppingCartScreen());
              }, text: "View Cart",buttonHeight: 50,),
        ));
      },
    );
  }
}
