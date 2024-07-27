import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesData{

  ///Variable Declaration
  static late SharedPreferences pref;

  ///Initialization of Instance
  static initSharedPreferences() async {
    pref = await SharedPreferences.getInstance();
    debugPrint("=====|| Instance of shared preferences is initialized ||=====");
  }

  ///Set and Get Users Login Status
  static void setLoginStatus({required bool isLogin}){
    pref.setBool("isUserLogin", isLogin);
  }
  static bool getLoginStatus(){
    bool isLogin = pref.getBool("isUserLogin") ?? false;
    return isLogin;
  }

  ///Set and Get SID
  static void setSID({required String sid}){
    pref.setString("sid", sid);
  }
  static String getSID(){
    String sid = pref.getString("sid") ?? "null";
    return sid;
  }

  ///Set and Get Api Key
  static void setApiKey({required String apiKey}){
    pref.setString("apiKey", apiKey);
  }
  static String getApiKey(){
    String apiKey = pref.getString("apiKey") ?? "null";
    return apiKey;
  }

  ///Set and Get Api Secret
  static void setApiSecret({required String apiSecret}){
    pref.setString("apiSecret", apiSecret);
  }
  static String getApiSecret(){
    String apiSecret = pref.getString("apiSecret") ?? "null";
    return apiSecret;
  }

  ///Set and Get User Name
  static void setUserName({required String userName}){
    pref.setString("userName", userName);
  }
  static String getUserName(){
    String userName = pref.getString("userName") ?? "null";
    return userName;
  }

  ///Set and Get User Email
  static void setUserEmail({required String userEmail}){
    pref.setString("userEmail", userEmail);
  }
  static String getUserEmail(){
    String userEmail = pref.getString("userEmail") ?? "null";
    return userEmail;
  }

  ///Set and Get User Role
  static void setUserRole({required String userRole}){
    pref.setString("userRole", userRole);
  }
  static String getUserRole(){
    String userRole = pref.getString("userRole") ?? "null";
    return userRole;
  }

  ///Set and Get User Full name
  static void setUserFullName({required String userFullName}){
    pref.setString("userFullName", userFullName);
  }
  static String getUserFullName(){
    String userFullName = pref.getString("userFullName") ?? "null";
    return userFullName;
  }


}