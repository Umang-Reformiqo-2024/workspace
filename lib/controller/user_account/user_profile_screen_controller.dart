import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:workspace/screens/home/wsc_location_screen.dart';

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
    nameController.text="Test Name";
    emailController.text="test@test.com";
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
    }
    update();
  }

  onTapDoneButton() {
    userDataValidation();
  }

  void userDataValidation() {
    if(userProfileImage==null)
      {
        Get.snackbar("Something went wrong", "Please upload image",margin: const EdgeInsets.all(10));
      }
    else if(nameController.text.isEmpty)
      {
        Get.snackbar("Something went wrong", "Name can not be blank or empty",margin: const EdgeInsets.all(10));
      }
    else if(emailController.text.isEmpty)
      {
        Get.snackbar("Something went wrong", "Email can not be blank or empty",margin: const EdgeInsets.all(10));
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
        navigateToWscLocationScreen();
      }
  }

  void navigateToWscLocationScreen() {
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