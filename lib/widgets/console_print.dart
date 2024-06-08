import 'package:flutter/material.dart';

class DebugPrint{

  static print({required String text}){
    debugPrint("====================\n==>> $text\n====================");
  }
}