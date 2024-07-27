
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:workspace/api_services/api_endpoints.dart';
import 'package:workspace/api_services/api_methods.dart';
import 'package:workspace/screens/login_signup/login_signup_screen.dart';
import 'package:workspace/widgets/console_print.dart';

class IntroductionScreenController extends GetxController{


  PageController pageController = PageController(viewportFraction: 1,initialPage: 0);
  int currentPage=0;
  bool startNextPageAnimation=false;

  onPageChanged(int value) {
    currentPage=value;
    update();
  }

  onTapLetsStart() async {
    DebugPrint.print(text: "On tap lets start button from Introduction screen");
    Future.delayed(const Duration(milliseconds: 10), () {
      startNextPageAnimation = true;
      update();
      Future.delayed(const Duration(seconds: 1), () {
        Get.off(() => const LoginSignupScreen(),transition: Transition.fadeIn,curve: Curves.easeIn,duration: const Duration(milliseconds: 1500));
      });
    });
    // String response = await ApiMethods.getApi(
    //     apiUrl: ApiEndpoints.baseUrl+ApiEndpoints.loginUrl,
    //   apiHeaders: { 'Accept': 'application/json' },
    //   isShowLoader: true
    // );
    // String response = await ApiMethods.postApi(
    //     apiUrl: ApiEndpoints.baseUrl+ApiEndpoints.loginUrl,
    //   apiBody: {'usr':"Administrator",'pwd':"Hey@you\$know14"},
    //   apiHeaders: { 'Accept': 'application/json' },
    //   isShowLoader: true
    // );
    // debugPrint("===[$response]===");
  }
}