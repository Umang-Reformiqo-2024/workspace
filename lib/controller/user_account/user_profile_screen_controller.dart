import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:workspace/screens/home/wsc_location_screen.dart';
import 'package:workspace/stored_data/shared_preference.dart';

import '../../api_services/api_endpoints.dart';
import '../../api_services/api_methods.dart';
import '../../model/signup_api_response_model.dart';

class UserProfileScreenController extends GetxController{

  bool startNextPageAnimation = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  bool isImageSelected = false;
  bool isNameReadOnly = true;
  bool isEmailReadOnly = true;

  final ImagePicker picker = ImagePicker();
  XFile? userProfileImage;

  @override
  void onInit() {
    super.onInit();
    nameController.text=SharedPreferencesData.getUserFullName();
    emailController.text=SharedPreferencesData.getUserEmail();
  }

  onTapEditName(){
    isNameReadOnly?isNameReadOnly=false:isNameReadOnly=true;
    update();
  }
  onTapEditEmail(){
    isEmailReadOnly?isEmailReadOnly=false:isEmailReadOnly=true;
    update();
  }

  onTapRemoveUserImage() {
    isImageSelected=false;
    update();
  }

  onTapUploadImage() async {
    if(!isImageSelected){
      userProfileImage = await picker.pickImage(source: ImageSource.gallery).whenComplete(() {
        if(userProfileImage == null)
        {
          isImageSelected=false;
          update();
        }
        else
        {
          isImageSelected=true;
          update();
        }
        update();
      },);
      update();
    }
    update();
  }

  onTapDoneButton() async {
    userDataValidation();
  }

  void userDataValidation() {
    if(!isImageSelected)
      {
        Get.snackbar("Something went wrong", "Please upload image",margin: const EdgeInsets.all(10));
      }
    else if(phoneNumberController.text.isEmpty)
      {
        Get.snackbar("Something went wrong", "Phone number can not be blank or empty",margin: const EdgeInsets.all(10));
      }
    else if(phoneNumberController.text.length!=10)
      {
        Get.snackbar("Something went wrong", "Phone number should be 10 digit",margin: const EdgeInsets.all(10));
      }
    else
      {
        processUserImage();
      }
  }

  processUserImage() async {
    List<int> imageBytes = await userProfileImage!.readAsBytes();
    String base64Image = base64Encode(imageBytes);
    debugPrint(base64Image);
    log(base64Image,name: "IMage");
    signupApiCall(email: emailController.text.toString(), phone: phoneNumberController.text.toString(), bio: bioController.text.toString(), img: base64Image);
  }
  void signupApiCall({required String email, required String phone, required String bio,required String img}) async {
    ///Api Call
    String response = await ApiMethods.postApi(apiUrl: ApiEndpoints.baseUrl+ApiEndpoints.signupProfileUrl, apiBody: {'user':email,'mobile_no':phone,'bio':bio,'img':img}, apiHeaders: { 'Accept': 'application/json' }, isShowLoader: true);
    Map<String,dynamic> jsonResponse = jsonDecode(response);
    ///Data Handling
    SignupApiResponseModel signupApiResponseModel = SignupApiResponseModel.fromJson(jsonResponse);
    update();
    if(signupApiResponseModel.message!.successKey==1)
    {
      Get.snackbar("Account Created","Lets starts with ${signupApiResponseModel.message!.success}",margin: const EdgeInsets.all(10));
      navigateToWscLocationScreen();
    }
    else
    {
      Get.snackbar("Something went`s wrong","${signupApiResponseModel.message!.error}",margin: const EdgeInsets.all(10));
    }
  }

  void navigateToWscLocationScreen() {
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.to(() => const WscLocationScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: const Duration(milliseconds: 1500));
      }).whenComplete(() {
        Future.delayed(const Duration(seconds: 2),() {
          startNextPageAnimation = false;
          update();
        },);
      });
    });
  }
}