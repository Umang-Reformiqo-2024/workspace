import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/wishlist_controller.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: WishlistController(),
      builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Text("WISHLIST SCREEN"),
        ),
      );
    },);
  }
}
