import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../screens/home/wsc_location_screen.dart';

class LoginScreenController extends GetxController{


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHidden = true;
  bool startNextPageAnimation = false;

  onTapPasswordEye() {
    isPasswordHidden?isPasswordHidden=false:isPasswordHidden=true;
    update();
  }

  onTapLoginButton(){
    userInputValidation();
  }

  onTapSkipAndBrowseButton(){
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => const WscLocationScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });
  }

  void userInputValidation() {
    if(emailController.text.isEmpty)
      {
        Get.snackbar("Invalid field", "Email can not be blank or empty",margin: const EdgeInsets.all(10));
      }
    else if(passwordController.text.isEmpty)
      {
        Get.snackbar("Invalid field", "Password can not be blank or empty",margin: const EdgeInsets.all(10));
      }
    else
      {
        Future.delayed(const Duration(milliseconds: 10), () {
          startNextPageAnimation = true;
          update();
          Future.delayed(const Duration(seconds: 1), () {
            Get.to(() => const WscLocationScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: Duration(milliseconds: 1500));
          }).whenComplete(() {
            Future.delayed(const Duration(seconds: 2),() {
              startNextPageAnimation = false;
              update();
            },);
          });
        });
      }
  }


}