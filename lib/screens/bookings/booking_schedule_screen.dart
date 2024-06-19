import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timetable/flutter_timetable.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/bookings/booking_schedule_screen_controller.dart';
class BookingScheduleScreen extends StatelessWidget {
  const BookingScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BookingScheduleScreenController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            forceMaterialTransparency: true,
          ),
          body: ListView(
            padding: EdgeInsets.only(left: 20, right: 20),
            children: [
              Text("Schedule Your Booking", style: TextStyle(fontSize: 22,
                  fontFamily: AppFont.primary,
                  fontWeight: FontWeight.bold),),
              SizedBox(
                height: 500,
                child: Timetable<String>(
                  controller: controller.controller,
                  items: controller.items!,
                  // cellBuilder: (datetime) => Container(
                  //   decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.blueGrey, width: 0.2),
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       DateFormat("MM/d/yyyy\nha").format(datetime),
                  //       style: TextStyle(
                  //         color: Color(0xff000000 + (0x002222 * datetime.hour) + (0x110000 * datetime.day)).withOpacity(0.5),
                  //       ),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // ),
                  // cornerBuilder: (datetime) => Container(
                  //   color: Colors.accents[datetime.day % Colors.accents.length],
                  //   child: Center(child: Text("${datetime.year}")),
                  // ),
                  headerCellBuilder: (datetime) {
                    //final color = Colors.primaries[datetime.day % Colors.accents.length];
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: AppColor.black, width: 2)),
                      ),
                      child: Center(
                        child: Text(
                          DateFormat("E\nMMM d").format(datetime),
                          style: TextStyle(
                            color: AppColor.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                  hourLabelBuilder: (time) {
                    final hour = time.hour == 12 ? 12 : time.hour % 12;
                    final period = time.hour < 12 ? "am" : "pm";
                    final isCurrentHour = time.hour == DateTime.now().hour;
                    return Text(
                      "$hour$period",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: isCurrentHour ? FontWeight.bold : FontWeight.normal,
                      ),
                    );
                  },
                  itemBuilder: (item) => Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(220),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        item.data ?? "",
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  nowIndicatorColor: Colors.red,
                  snapToDay: true,
                ),
              ),
            ],
          ),
        ));
      },);
  }
}