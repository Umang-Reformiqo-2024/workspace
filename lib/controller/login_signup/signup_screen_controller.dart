import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/login_signup/signup_confirmation_screen.dart';

class SignupScreenController extends GetxController {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool startNextPageAnimation=false;
  bool isPasswordHidden = true;
  bool isTermsOfServiceAccepted = false;

  onTapPasswordEye() {
    isPasswordHidden?isPasswordHidden=false:isPasswordHidden=true;
    update();
  }

  onSelectingTermsOfService({required bool userResponse}){
    isTermsOfServiceAccepted = userResponse;
    update();
  }

  onTapSignupButton(){
    userInputValidation();
  }

  onTapTermsOfServiceText() {}

  onTapGoogle() {}
  onTapFacebook() {}

  void userInputValidation() {
    if(nameController.text.isEmpty)
      {
       Get.snackbar("Something went wrong", "Name can not be blank or empty",margin: EdgeInsets.all(10));
      }
    else if(emailController.text.isEmpty)
      {
        Get.snackbar("Something went wrong", "Email can not be blank or empty",margin: EdgeInsets.all(10));
      }
    else if (passwordController.text.isEmpty)
      {
        Get.snackbar("Something went wrong", "Password can not be blank or empty",margin: EdgeInsets.all(10));
      }
    else if (!isTermsOfServiceAccepted)
      {
        Get.snackbar("Something went wrong", "Please accept Terms of Service",margin: EdgeInsets.all(10));
      }
    else
      {
        navigateToNextScreen();
      }
  }

  void navigateToNextScreen() {
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => const SignupConfirmationScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });
  }

}