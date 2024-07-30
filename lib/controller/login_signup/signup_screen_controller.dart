import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/model/signup_api_response_model.dart';
import 'package:workspace/screens/common_screen/privacy_policy_screen.dart';
import 'package:workspace/screens/login_signup/signup_confirmation_screen.dart';
import 'package:workspace/stored_data/shared_preference.dart';
import '../../api_services/api_endpoints.dart';
import '../../api_services/api_methods.dart';
import '../../model/login_api_response_model.dart';

class SignupScreenController extends GetxController {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool startNextPageAnimation=false;
  bool isPasswordHidden = true;
  bool isTermsOfServiceAccepted = false;
  bool isPasswordValidLength=false;
  bool hasPasswordOneDigit=false;
  bool hasPasswordOneUpperChar=false;
  bool hasPasswordOneLowerChar=false;
  bool hasPasswordOneSpecialChar=false;

  onTapPasswordEye() {
    isPasswordHidden?isPasswordHidden=false:isPasswordHidden=true;
    update();
  }

  onPasswordValueChange({required String password}) {
    isPasswordValidLength = password.length >= 6;
    hasPasswordOneUpperChar = password.contains(RegExp(r'[A-Z]'));
    hasPasswordOneLowerChar = password.contains(RegExp(r'[a-z]'));
    hasPasswordOneDigit = password.contains(RegExp(r'[0-9]'));
    hasPasswordOneSpecialChar = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    update();
  }

  onSelectingTermsOfService({required bool userResponse}){
    isTermsOfServiceAccepted = userResponse;
    update();
  }

  onTapSignupButton(){
    userInputValidation();
  }


  onTapTermsOfServiceText() {
    Get.to(const PrivacyPolicyScreen());
  }

  // onTapGoogle() {}
  // onTapFacebook() {}

  void userInputValidation() {
    if(firstNameController.text.isEmpty)
      {
       Get.snackbar("Something went wrong", "First Name can not be blank or empty",margin: const EdgeInsets.all(10));
      }
    else if(emailController.text.isEmpty)
      {
        Get.snackbar("Something went wrong", "Email can not be blank or empty",margin: const EdgeInsets.all(10));
      }
    else if (passwordController.text.isEmpty)
      {
        Get.snackbar("Something went wrong", "Password can not be blank or empty",margin: const EdgeInsets.all(10));
      }
    else if (passwordController.text.length < 6)
      {
        Get.snackbar("Something went wrong", "Password must be at least 6 characters long",margin: const EdgeInsets.all(10));
      }
    else if (!RegExp(r'[A-Z]').hasMatch(passwordController.text))
      {
        Get.snackbar("Something went wrong", "Password must contain at least one uppercase letter",margin: const EdgeInsets.all(10));
      }
    else if (!RegExp(r'[a-z]').hasMatch(passwordController.text))
      {
        Get.snackbar("Something went wrong", "Password must contain at least one lowercase letter",margin: const EdgeInsets.all(10));
      }
    else if (!RegExp(r'[0-9]').hasMatch(passwordController.text))
      {
        Get.snackbar("Something went wrong", "Password must contain at least one number",margin: const EdgeInsets.all(10));
      }
    else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(passwordController.text))
      {
        Get.snackbar("Something went wrong", "Password must contain at least one special character",margin: const EdgeInsets.all(10));
      }
    else if (!isTermsOfServiceAccepted)
      {
        Get.snackbar("Something went wrong", "Please accept Terms of Service",margin: const EdgeInsets.all(10));
      }
    else
      {
        signupApiCall(firstName: firstNameController.text.toString(), lastName: lastNameController.text.toString(), email: emailController.text.toString(), password: passwordController.text.toString());
      }
  }

  void signupApiCall({required String firstName, required String lastName, required String email, required String password}) async {
    ///Api Call
    String response = await ApiMethods.postApi(apiUrl: ApiEndpoints.baseUrl+ApiEndpoints.signupUrl, apiBody: {'first_name':firstName,'last_name':lastName,'email':email,'password':password}, apiHeaders: { 'Accept': 'application/json' }, isShowLoader: true);
    Map<String,dynamic> jsonResponse = jsonDecode(response);
    ///Data Handling
    SignupApiResponseModel signupApiResponseModel = SignupApiResponseModel.fromJson(jsonResponse);
    update();
    if(signupApiResponseModel.message!.successKey==1)
    {
      Get.snackbar("Account Created","Lets starts with ${signupApiResponseModel.message!.success}",margin: const EdgeInsets.all(10));
      navigateToNextScreen();
    }
    else
    {
      Get.snackbar("Something went`s wrong","${signupApiResponseModel.message!.error}",margin: const EdgeInsets.all(10));
    }
  }

  void navigateToNextScreen() {
    SharedPreferencesData.setUserFullName(userFullName: "${firstNameController.text} ${lastNameController.text}");
    SharedPreferencesData.setUserEmail(userEmail: emailController.text.toString());
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
    passwordController.clear();
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => const SignupConfirmationScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: const Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });
  }
}