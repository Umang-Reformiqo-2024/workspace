import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:workspace/model/login_api_response_model.dart';
import 'package:workspace/stored_data/shared_preference.dart';

import '../../api_services/api_endpoints.dart';
import '../../api_services/api_methods.dart';
import '../../screens/home/wsc_location_screen.dart';

class LoginScreenController extends GetxController{


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHidden = true;
  bool startNextPageAnimation = false;

  void onTapPasswordEye() {
    isPasswordHidden?isPasswordHidden=false:isPasswordHidden=true;
    update();
  }

  void onTapLoginButton(){
    userInputValidation();
  }

  void onTapSkipAndBrowseButton(){
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.offAll(() => const WscLocationScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: const Duration(milliseconds: 1500));
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
        callLoginApi(userName: emailController.text.toString(),password: passwordController.text.toString());
      }
  }

  void callLoginApi({required String userName, required String password}) async {
    ///Api Call
    String response = await ApiMethods.postApi(apiUrl: ApiEndpoints.baseUrl+ApiEndpoints.loginUrl, apiBody: {'usr':userName,'pwd':password}, apiHeaders: { 'Accept': 'application/json' }, isShowLoader: true);
    Map<String,dynamic> jsonResponse = jsonDecode(response);
    ///Data Handling
    LoginApiResponseModel loginApiResponseModel = LoginApiResponseModel.fromJson(jsonResponse);
    update();
    if(loginApiResponseModel.message!.successKey==1)
      {
        Get.snackbar("${loginApiResponseModel.message!.message}","Welcome ${loginApiResponseModel.fullName}",margin: const EdgeInsets.all(10));
        saveUserDataAndNavigate(userData: loginApiResponseModel);
      }
    else
      {
        Get.snackbar("Something went`s wrong","${loginApiResponseModel.message!.message}",margin: const EdgeInsets.all(10));
      }
  }

  void saveUserDataAndNavigate({required LoginApiResponseModel userData}) {

    emailController.clear();
    passwordController.clear();

    SharedPreferencesData.setLoginStatus(isLogin: true);
    SharedPreferencesData.setSID(sid: userData.message!.sid ?? "null");
    SharedPreferencesData.setApiKey(apiKey: userData.message!.apiKey ?? "null");
    SharedPreferencesData.setApiSecret(apiSecret: userData.message!.apiSecret ?? "null");
    SharedPreferencesData.setUserName(userName: userData.message!.username ?? "null");
    SharedPreferencesData.setUserEmail(userEmail: userData.message!.email ?? "null");
    SharedPreferencesData.setUserRole(userRole: userData.message!.role ?? "null");
    SharedPreferencesData.setUserFullName(userFullName: userData.fullName ?? "null");
    debugPrint("===|| Data Stored in Preferences ||===");

    ///Navigation to Home Screen if User Login Successfully.
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.offAll(() => const WscLocationScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: const Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });

  }


}