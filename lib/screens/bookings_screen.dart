import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/bookings_controller.dart';

class BookingsScreen extends StatelessWidget {
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BookingsController(),
      builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text("BOOKINGS SCREEN"),
        ),
      );
    },);
  }
}
