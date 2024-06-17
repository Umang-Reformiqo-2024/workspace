import 'package:get/get.dart';

class ItemDetailController extends GetxController{
  
  List<DateTimeObject> bookingDateList=[
    DateTimeObject(date: "03", day: "Mon"),
    DateTimeObject(date: "04", day: "Tue"),
    DateTimeObject(date: "05", day: "Wed"),
    DateTimeObject(date: "06", day: "Thu"),
    DateTimeObject(date: "07", day: "Fri",isSelected: true),
    DateTimeObject(date: "08", day: "Sat"),
    DateTimeObject(date: "09", day: "Sun"),
  ];

  onTapDateSelection({required int index}) {
    for(var element in bookingDateList){
      element.isSelected=false;
    }
    bookingDateList[index].isSelected=true;
    update();
  }

}

class DateTimeObject{
  String? day;
  String? date;
  bool isSelected=false;
  
  DateTimeObject({required this.date,required this.day,this.isSelected=false});
  
}