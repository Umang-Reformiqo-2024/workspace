import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/user_account/user_account_screen_controller.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: UserAccountScreenController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("Account",style: TextStyle(color: Color(0xFF2D2D2D),fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.message_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.info_outline))
            ],
            forceMaterialTransparency: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("User Name",style: TextStyle(
                            color: Colors.black,
                            fontFamily: AppFont.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                          ),),
                          Text("View Profile")
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
                            mainAxisAlignment: MainAxisAlignment.start,
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
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Icon(Icons.currency_rupee),
                        )
                      ],
                    ),
                  ),
                  profileTile(
                    prefixIcon: Icons.access_time_rounded,
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Bookings",
                    onTap: () {
                      debugPrint("Profile Tile On Tap Pressed - Bookings");
                    },
                  ),
                  profileTile(
                    prefixIcon: Icons.sticky_note_2_outlined,
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Support Ticket",
                    onTap: () {
                      debugPrint("Profile Tile On Tap Pressed - Support Ticket");
                    },
                  ),
                  profileTile(
                    prefixIcon: Icons.payment,
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Payment Methods",
                    onTap: () {
                      debugPrint("Profile Tile On Tap Pressed - Payment Methods");
                    },
                  ),
                  profileTile(
                    prefixIcon: Icons.language,
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Language",
                    onTap: () {
                      debugPrint("Profile Tile On Tap Pressed - Language");
                    },
                  ),
                  profileTile(
                    prefixIcon: Icons.privacy_tip_outlined,
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Privacy Policy",
                    onTap: () {
                      debugPrint("Profile Tile On Tap Pressed - Privacy Policy");
                    },
                  ),
                  profileTile(
                    prefixIcon: Icons.local_police_outlined,
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "Terms of Use",
                    onTap: () {
                      debugPrint("Profile Tile On Tap Pressed - Terms of Use");
                    },
                  ),
                  profileTile(
                    prefixIcon: Icons.info_outline,
                    suffixIcon: Icons.keyboard_arrow_right,
                    text: "About App",
                    bottomDivider: true,
                    onTap: () {
                      debugPrint("Profile Tile On Tap Pressed - Terms of Use");
                    },
                  ),
                  InkWell(
                    onTap: () {
                      debugPrint("===[Log Out Text Button]===");
                    },
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
                        Text("Developed By"),
                        Container(
                          width: 120,
                          margin: EdgeInsets.only(top: 5,bottom: 10),
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
    required IconData prefixIcon,
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
                SizedBox(width: 25,child: Icon(prefixIcon,size: 25,)),
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
