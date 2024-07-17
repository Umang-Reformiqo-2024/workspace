import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/user_account/user_account_screen_controller.dart';
import 'package:workspace/screens/app_screens/about_app_screen.dart';
import 'package:workspace/screens/bookings/my_bookings_screen.dart';
import 'package:workspace/screens/common_screen/help_and_support_screen.dart';
import 'package:workspace/screens/common_screen/privacy_policy_screen.dart';
import 'package:workspace/screens/payment_methods/payment_methods_screen.dart';
import 'package:workspace/screens/splash_screen/splash_screen.dart';
import 'package:workspace/screens/user_account/user_profile_screen.dart';
import 'package:workspace/widgets/common_widgets/app_navigator.dart';

import '../../widgets/common_widgets/app_bar.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: UserAccountScreenController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: WorkSpaceCoAppBar(title: "Your Account",titleSize: 20,),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.only(left: 10,right: 10,top: 20),
                        decoration: BoxDecoration(
                          color: const Color(0xFF525151),
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: const Icon(Icons.image_outlined,color: Colors.white,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("User Name",style: TextStyle(
                            color: Colors.black,
                            fontFamily: AppFont.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                          ),),
                          GestureDetector(onTap: () {
                            debugPrint("===[View Profile Text Button]===");
                            Get.to(()=> const UserProfileScreen(),transition: Transition.cupertino,curve: Curves.easeInOut,duration: const Duration(milliseconds: 700));
                          },child: Container(height: 25,color: Colors.transparent,child: const Text("View Profile")))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(indent: 10,endIndent: 10,),
                  Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF010101),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFCACACA))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Get your Credits",style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w400
                            ),),
                            Text("This is dummy text to display upcoming content and visualized effects",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12
                            ),),
                          ],),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset("assets/v2/png/credits_coin_icon.webp",fit: BoxFit.fill,width: 70,),
                        )
                      ],
                    ),
                  ),
                  profileTile(
                    prefixIconString : "assets/v2/png/bookings_icon.webp",
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Bookings",
                    onTap: () => AppNavigator.screenTo(screen:const MyBookingsScreen()),
                  ),
                  profileTile(
                    prefixIconString:"assets/v2/png/support_ticket_icon.webp",
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Support Ticket",
                    onTap: () => AppNavigator.screenTo(screen: HelpAndSupportScreen()),
                  ),
                  profileTile(
                    prefixIconString:"assets/v2/png/payment_method_icon.webp",
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Payment Methods",
                    onTap: () => AppNavigator.screenTo(screen: const PaymentMethodsScreen()),
                  ),
                  // profileTile(
                  //   prefixIcon: Icons.language,
                  //   suffixIcon: Icons.keyboard_arrow_right,
                  //   text: "Language",
                  //   onTap: () {
                  //     debugPrint("Profile Tile On Tap Pressed - Language");
                  //   },
                  // ),
                  profileTile(
                    prefixIconString:"assets/v2/png/privacy_policy_icon.webp",
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Privacy Policy",
                    onTap: () => AppNavigator.screenTo(screen: const PrivacyPolicyScreen()),
                  ),
                  profileTile(
                    prefixIconString:"assets/v2/png/terms_of_use_icon.webp",
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Terms of Use",
                    onTap: () => AppNavigator.screenTo(screen: const PrivacyPolicyScreen()),
                  ),
                  profileTile(
                    prefixIconString:"assets/v2/png/about_app_icon.webp",
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "About App",
                    bottomDivider: true,
                    onTap: () => AppNavigator.screenTo(screen: const AboutAppScreen()),
                  ),
                  InkWell(
                      onTap: () => AppNavigator.screenOffAll(screen: const SplashScreen()),
                    splashFactory: NoSplash.splashFactory,
                    splashColor: Colors.transparent,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10,top: 10,bottom: 10,right: 10),
                      child: Text("Logout",style: TextStyle(
                        fontFamily: AppFont.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.underline,
                      ),),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const Text("Developed By"),
                        Container(
                          width: 120,
                          margin: const EdgeInsets.only(top: 5,bottom: 10),
                          // height: 50,
                          child: Image.asset("assets/v2/png/reformiqo.webp")
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
      },
    );
  }

  Widget profileTile({
    required IconData suffixIcon,
    required String prefixIconString,
    required String text,
    required void Function() onTap,
    bool bottomDivider = false
}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Divider(indent: 10,endIndent: 10,),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(width: 25,child: Image.asset(prefixIconString)),
                const SizedBox(width: 15,),
                Text(text,style: const TextStyle(
                    fontSize: 18,
                    fontFamily: AppFont.primary
                ),),
                const Spacer(),
                SizedBox(width:25,child: Icon(suffixIcon,size: 25,))
              ],
            ),
          ),
        ),
        bottomDivider?
        const Divider(indent: 10,endIndent: 10,):const SizedBox.shrink()
      ],
    );
  }
}
