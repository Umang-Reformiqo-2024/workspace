import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{

  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  bool isPasswordHidden=true;
  bool isTermsAndConditionIsSelected=false;


  onTapShowPassword(){
    log(name: "Password Hide/Show Button","Printing this log inside onTapShowPassword() from signup_controller.dart file");
    isPasswordHidden
        ? isPasswordHidden=false
        : isPasswordHidden=true
    ;
    log(name: "value","===[Value :-> isPasswordHidden = $isPasswordHidden]===");
    update();
  }

  onSelectingTermsAndCondition({required bool value}){
    log(name: "Terms and Condition Checkbox","Printing this log inside onSelectingTermsAndCondition() from signup_controller.dart file");
    log(name: "value","===[Checkbox Value :-> isTermsAndConditionIsSelected = ${value}]===");
    isTermsAndConditionIsSelected = value ;
    update();
  }

  userDataValidation(){
    if(nameController.text.isEmpty)
      {
        Get.snackbar("Invalid or Empty Name", "Name must be 4 character longer",margin: const EdgeInsets.all(10));
      }
    else if(emailController.text.isEmpty)
      {
        Get.snackbar("Invalid or Empty Email", "Email is not valid",margin: const EdgeInsets.all(10));
      }
    else if(passwordController.text.isEmpty)
      {
        Get.snackbar("Invalid or Empty Password", "Password must be 8 character longer",margin: const EdgeInsets.all(10));
      }
    else if(!isTermsAndConditionIsSelected)
      {
        Get.snackbar("Select Terms and Condition", "Please select terms and condition to processed further",margin: const EdgeInsets.all(10));
      }
    else
      {
        Get.snackbar("Success", "User Data is Valid",margin: const EdgeInsets.all(10));
      }
  }
  onTapSignUpButton(){
    log(name: "Sign Up Button","Printing this log inside onTapSignUpButton() from signup_controller.dart file");
    userDataValidation();
  }
  onTapLogInButton(){
    log(name: "Log In Button","Printing this log inside onTapLogInButton() from signup_controller.dart file");
  }
  onTapSignUpWithGoogle(){
    log(name: "Sign Up With Google Button","Printing this log inside onTapSignUpWithGoogle() from signup_controller.dart file");
  }
  onTapSignUpWithFacebook(){
    log(name: "Sign Up With Facebook Button","Printing this log inside onTapSignUpWithFacebook() from signup_controller.dart file");
  }

}