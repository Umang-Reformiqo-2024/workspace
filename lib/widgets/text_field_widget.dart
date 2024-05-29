import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';

class TextFieldWidget{


  static Container simpleTextField({
    required String lable,
    required TextInputType keyboardType,
    required TextEditingController controller,
    Widget suffix = const SizedBox.shrink(),
    Widget prefix = const SizedBox.shrink(),
    bool isTextHidden = false

  }){
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColor.whiteTextField,
        borderRadius: BorderRadius.circular(8)
      ),
      child: TextField(
        controller: controller,
        cursorColor: AppColor.grayTextFieldBorder,
        keyboardType: keyboardType,
        obscureText: isTextHidden,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: AppColor.grayTextFieldBorder)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: AppColor.grayTextFieldBorder)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: AppColor.grayTextFieldBorder)),
          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: AppColor.grayTextFieldBorder)),
          labelText: lable,
          labelStyle: const TextStyle(color: AppColor.whiteHintTextField),
          suffix: suffix,
          prefix: prefix,
        ),
      ),
    );
  }
}