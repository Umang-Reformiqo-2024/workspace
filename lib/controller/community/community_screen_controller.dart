import 'package:get/get.dart';

import '../../screens/community/community_detail_screen.dart';

class CommunityScreenController extends GetxController{
  int selectedTabIndex=1;


  onChangeTab({required value}){
    selectedTabIndex = value;
    update();
  }

  onTapCompanyItem(){
    if(selectedTabIndex==1)
      {
        Get.to(const CommunityDetailScreen(),duration: const Duration(milliseconds: 500),transition: Transition.cupertino);
      }
  }
}