import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/stored_data/shared_preference.dart';

import '../../screens/bookings/booking_schedule_screen.dart';

class WscLocationController extends GetxController {

  List<String> locationList=['City Center','Home','Skyline','Rise'];
  Map<String,List<String>> meetingRoomsMap= {
    'City Center':['Base','Hi-Five','Shot','Pitch'],
    'Home':['Base','Pitch'],
    'Skyline':['Shot','Pitch'],
    'Rise':['Base']
  };
  List<String> meetingRoomList = ['Base','Hi-Five','Shot','Pitch'];

  String userSelectedLocation="";
  String userSelectedMeetingRoom="";



  onChangeLocation({required String location}){
    meetingRoomList=[];
    meetingRoomList = meetingRoomsMap[location]!;
    userSelectedLocation=location;
    debugPrint("===$location");
    update();
  }

  onChangeMeetingRoom({required String meetingRoom}){
    userSelectedMeetingRoom=meetingRoom;
    debugPrint("===$meetingRoom");
    update();
  }

  onTapBookNow(){

    // Get.to(()=> const BookingScheduleScreen(),duration: const Duration(milliseconds: 700),transition: Transition.cupertino,curve: Curves.easeInOut);
  }
}