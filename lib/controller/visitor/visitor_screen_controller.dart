import 'package:get/get.dart';

class VisitorScreenController extends GetxController {
  int selectedTabIndex=1;


  onChangeTab({required value}){
    selectedTabIndex = value;
    update();
  }

  onTapCompanyItem(){
    if(selectedTabIndex==1)
    {
      //Get.to(CommunityDetailScreen(),duration: Duration(milliseconds: 500),transition: Transition.cupertino);
    }
  }
}