import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/home_wrapper_controller.dart';
import 'package:workspace/screens/bookings_screen.dart';

import '../app_data/app_colors/app_color.dart';
import '../app_data/app_fonts/app_font.dart';

class HomeWrapperScreen extends StatelessWidget {
  const HomeWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeWrapperController(),
      builder: (controller) {
      return SafeArea(
        child: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            controller.stackIndex=0;
            controller.update();
          },
          child: Scaffold(
            backgroundColor: Colors.white,
            // appBar: AppBar(
            //   backgroundColor: Colors.white,
            //   foregroundColor: Colors.white,
            //   shadowColor: Colors.white,
            //   surfaceTintColor: Colors.white,
            //   elevation: 1,
            //   title: Row(
            //     children: [
            //       Image.asset("assets/icons/test_icons/app_logo.png"),
            //       const Spacer(),
            //       const Icon(
            //         Icons.notifications_on_outlined,
            //         size: 32,
            //         color: AppColor.black,
            //       )
            //     ],
            //   ),
            //   centerTitle: false,
            //   automaticallyImplyLeading: false,
            // ),
            body: IndexedStack(
              index: controller.stackIndex,
              children: const [
                //HomeScreen(),
                //WishlistScreen(),
                BookingsScreen(),
                //TeamScreen(),
                //AccountScreen()
              ],
            ),
            bottomNavigationBar: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.black.withOpacity(0.3),
                        offset: const Offset(0, -1),
                        blurRadius: 3,
                        spreadRadius: 1
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () => controller.onTapBottomBar(index:0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/bottom_bar_icon/3.svg",color:controller.stackIndex==0? AppColor.red:AppColor.black.withOpacity(0.6),),
                         Text("Search",style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppFont.primary,
                            fontWeight: controller.stackIndex==0?FontWeight.bold:FontWeight.normal,
                            color: AppColor.black202020,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () => controller.onTapBottomBar(index:1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/bottom_bar_icon/2.svg",color:controller.stackIndex==1? AppColor.red:AppColor.black.withOpacity(0.6),),
                        Text("Wishlist",style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppFont.primary,
                            fontWeight: controller.stackIndex==1?FontWeight.bold:FontWeight.normal,
                            color: AppColor.black5D5D5D
                        ),)
                      ],
                    ),
                  ),
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () => controller.onTapBottomBar(index:2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/bottom_bar_icon/5.svg",color:controller.stackIndex==2? AppColor.red:AppColor.black.withOpacity(0.6),),
                        Text("Bookings",style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppFont.primary,
                            fontWeight:controller.stackIndex==2?FontWeight.bold:FontWeight.normal,
                            color: AppColor.black5D5D5D
                        ),)
                      ],
                    ),
                  ),
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () => controller.onTapBottomBar(index:3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/bottom_bar_icon/1.svg",color:controller.stackIndex==3? AppColor.red:AppColor.black.withOpacity(0.6),),
                        Text("Team",style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppFont.primary,
                            fontWeight:controller.stackIndex==3?FontWeight.bold:FontWeight.normal,
                            color: AppColor.black5D5D5D
                        ),)
                      ],
                    ),
                  ),
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () => controller.onTapBottomBar(index:4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/bottom_bar_icon/4.svg",color:controller.stackIndex==4? AppColor.red:AppColor.black.withOpacity(0.6),),
                        Text("Account",style: TextStyle(
                            fontSize: 12,
                            fontFamily: AppFont.primary,
                            fontWeight:controller.stackIndex==4?FontWeight.bold:FontWeight.normal,
                            color: AppColor.black5D5D5D
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },);
  }
}
