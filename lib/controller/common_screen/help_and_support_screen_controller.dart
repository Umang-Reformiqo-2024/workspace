import 'package:get/get.dart';

class HelpAndSupportScreenController extends GetxController{
  int selectedTabIndex=1;

  bool isActiveTicketOpen = false;
  bool isResolvedTicketOpen = false;


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

  onTapActiveTicketSection(){
    isActiveTicketOpen?isActiveTicketOpen=false:isActiveTicketOpen=true;
    update();
  }

  onTapResolvedTicketSection(){
    isResolvedTicketOpen?isResolvedTicketOpen=false:isResolvedTicketOpen=true;
    update();
  }
}