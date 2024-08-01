import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';
import 'package:workspace/controller/user_account/user_profile_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';
import 'package:badges/badges.dart' as badges;
import '../../app_data/app_fonts/app_font.dart';
import '../../widgets/common_widgets/app_bar.dart';

class UserProfileScreen extends StatelessWidget {
  bool isSignupProfile;
  UserProfileScreen({super.key,this.isSignupProfile=false});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: UserProfileScreenController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar:isSignupProfile ? WorkSpaceCoAppBar(title: "Profile",titleActions: []) : WorkSpaceCoAppBar(title: "Profile",titleSize: 20,),
          body: AnimatedContainer(
            duration: const Duration(seconds: 1),
            transform: Matrix4.translationValues(0, controller.startNextPageAnimation ? -MediaQuery.of(context).size.height * 1 : 0, 0,),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: controller.startNextPageAnimation?0:1,
              child: Padding(padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: badges.Badge(
                        badgeAnimation: const badges.BadgeAnimation.slide(),
                        badgeStyle: const badges.BadgeStyle(
                          badgeColor: Color(0xFFE8E8E8),
                        ),
                        position: badges.BadgePosition.bottomEnd(end: -10,bottom: 0),
                        onTap: () => controller.onTapRemoveUserImage(),
                        showBadge: controller.isImageSelected,
                        badgeContent: const Icon(Icons.delete_forever),
                        child: GestureDetector(
                          onTap: () => controller.onTapUploadImage(),
                          child: RippleAnimation(
                            color: const Color(0xFFE8E8E8),
                            repeat: true,
                            ripplesCount: 3,
                            duration: const Duration(seconds: 3),
                            delay: const Duration(milliseconds: 1000),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                //image: DecorationImage(image: FileImage(File(controller.userProfileImage!.path))),
                                //image: DecorationImage(image: FileImage(File(controller.userProfileImage!.path))),
                                gradient: const LinearGradient(colors: [
                                  Color(0xFF4C4B4B),
                                  Color(0xFF2C2C2C),
                                ],begin: Alignment.topCenter,end: Alignment.bottomCenter,tileMode: TileMode.mirror),
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child:controller.isImageSelected?ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.file(File(controller.userProfileImage!.path),fit: BoxFit.cover,)):
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:  MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.image_outlined,color: Colors.white,),
                                  SizedBox(height: 10,),
                                  Text("Upload Image",style: TextStyle(fontSize: 10,color: Colors.white,fontFamily: AppFont.primary),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    TextField(
                      controller: controller.nameController,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.all(Radius.circular(10))),
                        disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFE8E8E8)), borderRadius: BorderRadius.all(Radius.circular(10))),
                        filled: true,
                        fillColor: const Color(0xFFF6F6F6),
                        labelStyle: TextStyle(color: const Color(0xFF838383).withOpacity(0.6), fontWeight: FontWeight.bold, fontFamily: AppFont.primary),
                        labelText: "Name",
                        prefixIcon: const Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style:TextStyle(color:const Color(0xFF838383).withOpacity(0.6), fontFamily: AppFont.primary), cursorColor: Colors.black,
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      controller: controller.emailController,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xFFE8E8E8)),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xFFE8E8E8)),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xFFE8E8E8)),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        disabledBorder: const OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xFFE8E8E8)),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        filled: true,
                        fillColor: const Color(0xFFF6F6F6),
                        labelStyle: TextStyle(
                            color: const Color(0xFF838383).withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFont.primary),
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style:  TextStyle(
                          color:const Color(0xFF838383).withOpacity(0.6), fontFamily: AppFont.primary),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      controller: controller.phoneNumberController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: Color(0xFFE8E8E8)),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: Color(0xFFE8E8E8)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: Color(0xFFE8E8E8)),
                              borderRadius: BorderRadius.circular(10)),
                          disabledBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: Color(0xFFE8E8E8)),
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: const Color(0xFFF6F6F6),
                          labelStyle: TextStyle(
                              color: const Color(0xFF838383).withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                              fontFamily: AppFont.primary),
                          labelText: "Phone",
                          prefixText: "+91",
                          prefixIcon: const Icon(Icons.call),
                      ),
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          color: Colors.black, fontFamily: AppFont.primary),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(height: 20,),
                    const Divider(),
                    const SizedBox(height: 5,),
                    const Text("Add any details such as age, occupation or city",style: TextStyle(fontSize: 12,fontFamily: AppFont.primary),),
                    const SizedBox(height: 20,),
                    TextField(
                      controller: controller.bioController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Color(0xFFE8E8E8)),
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Color(0xFFE8E8E8)),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Color(0xFFE8E8E8)),
                            borderRadius: BorderRadius.circular(10)),
                        disabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Color(0xFFE8E8E8)),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        fillColor: const Color(0xFFF6F6F6),
                        labelStyle: TextStyle(
                            color: const Color(0xFF838383).withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFont.primary),
                        labelText: "Bio",
                        prefixIcon: const Icon(Icons.wysiwyg_rounded),
                      ),
                      minLines: 4,
                      maxLines: 4,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                          color: Colors.black, fontFamily: AppFont.primary),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(height: 20,),
                    AppButtonPrimary(onTap: () => controller.onTapDoneButton(), text: "Done")
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
