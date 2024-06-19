import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_timetable/flutter_timetable.dart';
import 'package:get/get.dart';

class BookingScheduleScreenController extends GetxController{
  List<TimetableItem<String>>? items;
  final controller = TimetableController(
    start: DateUtils.dateOnly(DateTime.now()),
    initialColumns: 1,
    cellHeight: 150,
    startHour: 0,
    endHour: 23,
  );

  @override
  void onInit() {
    super.onInit();
    items=generateItems();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(const Duration(milliseconds: 100), () {
        controller.jumpTo(DateTime.now());
      });
    });
    update();
  }

  List<TimetableItem<String>> generateItems() {
    final random = Random();
    final items = <TimetableItem<String>>[];
    final today = DateUtils.dateOnly(DateTime.now());
    for (var i = 0; i < 100; i++) {
      int hourOffset = random.nextInt(56 * 24) - (7 * 24);
      final date = today.add(Duration(hours: hourOffset));
      items.add(TimetableItem(
        date,
        date.add(Duration(minutes: (random.nextInt(8) * 15) + 15)),
        data: "item $i",
      ));
    }
    return items;
  }
}