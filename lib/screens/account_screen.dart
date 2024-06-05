import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/account_controller.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AccountController(),
      builder: (controller) {
      return SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Text("ACCOUNT SCREEN"),),
      ));
    },);
  }
}
