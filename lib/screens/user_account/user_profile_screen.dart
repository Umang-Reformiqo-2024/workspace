import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/user_account/user_profile_screen_controller.dart';

import '../../app_data/app_fonts/app_font.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: UserProfileScreenController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: AnimatedContainer(
            duration: const Duration(seconds: 1),
            transform: Matrix4.translationValues(0, controller.startNextPageAnimation ? -MediaQuery.of(context).size.height * 1 : 0, 0,),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: controller.startNextPageAnimation?0:1,
              child: Padding(padding: EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () => Get.back(),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                          fontFamily: AppFont.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xFF4C4B4B),
                            Color(0xFF2C2C2C),
                          ],begin: Alignment.topCenter,end: Alignment.bottomCenter,tileMode: TileMode.mirror),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment:  MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image_outlined,color: Colors.white,),
                            SizedBox(height: 10,),
                            Text("Upload Image",style: TextStyle(fontSize: 10,color: Colors.white,fontFamily: AppFont.primary),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
