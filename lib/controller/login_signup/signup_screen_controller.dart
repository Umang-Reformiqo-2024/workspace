import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/login_signup/signup_confirmation_screen.dart';
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
    // String response = await ApiMethods.postApi(apiUrl: ApiEndpoints.baseUrl+ApiEndpoints.signupUrl, apiBody: {'first_name':firstName,'last_name':lastName,'email':email,'password':password}, apiHeaders: { 'Accept': 'application/json' }, isShowLoader: true);
    // Map<String,dynamic> jsonResponse = jsonDecode(response);
    ///Data Handling
    // LoginApiResponseModel loginApiResponseModel = LoginApiResponseModel.fromJson(jsonResponse);
    // update();
    // if(loginApiResponseModel.message!.successKey==1)
    // {
    //   Get.snackbar("${loginApiResponseModel.message!.message}","Welcome ${loginApiResponseModel.fullName}",margin: const EdgeInsets.all(10));
    //   navigateToNextScreen();
    // }
    // else
    // {
    //   Get.snackbar("Something went`s wrong","${loginApiResponseModel.message!.message}",margin: const EdgeInsets.all(10));
    // }
  }

  void navigateToNextScreen() {
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