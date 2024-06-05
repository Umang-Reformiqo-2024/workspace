import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/team_controller.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: TeamController(),
      builder: (controller) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Text("TEAM SCREEN"),
          ),
        ),
      );
    },);
  }
}
