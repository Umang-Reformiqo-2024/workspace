import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/bookings/successful_payment_screen_controller.dart';
import 'package:workspace/controller/bottom_bar_controller.dart';
import 'package:workspace/screens/bookings/my_bookings_screen.dart';
import 'package:workspace/screens/home/home_screen.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

class SuccessfulPaymentScreen extends StatelessWidget {
  SuccessfulPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SuccessfulPaymentScreenController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            forceMaterialTransparency: true,
            leading: IconButton(onPressed:() {
              Get.offAll(()=> HomeScreen(),duration: const Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);

            }, icon: const Icon(Icons.highlight_off_rounded)),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Image.asset("assets/v2/png/success_icon.webp",height: 150,width: 150,),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text("Payment Successful",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppFont.primary
                  ),),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("2 ⭐ Credits used",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: AppFont.primary
                  ),),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Text("Order id : PAYMENT_20062024_110604_USER_25",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    fontFamily: AppFont.primary
                  ),),
                ),
                AppButtonPrimary(onTap: () {
                  Get.offAll(()=> HomeScreen(bottomIndex: 1,),duration: const Duration(milliseconds: 700),curve: Curves.easeIn,transition: Transition.cupertino);
                }, text: "View Bookings"),
                const SizedBox(height: 30,)
              ],
            ),
          ),
        ));
      },
    );
  }
}
