import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController{


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordHidden = true;

  onTapPasswordEye() {
    isPasswordHidden?isPasswordHidden=false:isPasswordHidden=true;
    update();
  }

  onTapLoginButton(){
    userInputValidation();
  }

  onTapSkipAndBrowseButton(){

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
        //Get.offAll(()=> const HomeScreen());
      }
  }


}