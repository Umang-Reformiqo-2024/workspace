
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BookingScheduleScreenController extends GetxController{

  List<DateTimeModelClass> dates = List.generate(14, (index) {
    DateTime date = DateTime.now().add(Duration(days: index));
    String dayName = DateFormat('E').format(date);
    String dateString = DateFormat('d').format(date);
    String monthName = DateFormat('MMM').format(date);
    return DateTimeModelClass(
        date: dateString,
        month: monthName,
        day: dayName,
        isSelected: false);
  },);

  List<TimeSlotModelClass> timeSlots = List.generate(48, (index) {
    DateTime startTime = DateTime(DateTime.now().year).add(Duration(minutes: 30 * index));
    DateTime endTime = startTime.add(const Duration(minutes: 30));
    String formattedStartTime = DateFormat('HH:mm').format(startTime);
    String formattedEndTime = DateFormat('HH:mm').format(endTime);
    return TimeSlotModelClass(time: "$formattedStartTime - $formattedEndTime",isAvailable: index%5!=0?true:false); '$formattedStartTime - $formattedEndTime';
  },);


  List<String> noOfPeopleList = ['1','2','3','4','5','6','7','8','9','10'];



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    dates[0].isSelected=true;
    update();
  }

  onTapDateSelection({required int index}){
    for (var element in dates) {
      element.isSelected=false;
    }
    dates[index].isSelected=true;
    update();
    debugPrint("===[Selected Date : ${dates[index].date} ${dates[index].month} ${dates[index].day}]===");
  }

  onTapTimeSlots({required int index}){

    if(timeSlots[index].isAvailable)
      {
        timeSlots[index].isSelected == true
            ? timeSlots[index].isSelected = false
            : timeSlots[index].isSelected = true ;
        update();
      }

  }






}

class DateTimeModelClass {
  String? date;
  String? month;
  String? day;
  bool isSelected=false;

  DateTimeModelClass({required this.date, required this.month,required this.day,this.isSelected=false});
}


class TimeSlotModelClass {
  String? time;
  bool isSelected=false;
  bool isAvailable=true;

  TimeSlotModelClass({required this.time,this.isSelected=false,this.isAvailable=true});
}