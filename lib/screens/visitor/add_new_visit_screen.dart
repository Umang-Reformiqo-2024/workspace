import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/visitor/add_new_visit_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

class AddNewVisitScreen extends StatelessWidget {
  const AddNewVisitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AddNewVisitScreenController(),
      builder: (controller) {
      return SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            physics: const ClampingScrollPhysics(),
            children: [
              Align(alignment: Alignment.centerRight,child: IconButton(onPressed: () => Get.back(),icon: Icon(CupertinoIcons.clear_circled_solid,color: Color(0xFF2F2F2F),).paddingZero,)),
              const Text("New Visit",style: TextStyle(color: Color(0xFF2D2D2D),fontFamily: AppFont.primary,fontWeight: FontWeight.bold,fontSize: 24),),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF6F6F6),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    disabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    errorBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    prefixIcon: const Icon(Icons.person),
                    labelText: "Full Name",
                    labelStyle: const TextStyle(color: Color(0xFF838383))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF6F6F6),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    disabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    errorBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    prefixIcon: const Icon(Icons.email),
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Color(0xFF838383))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF6F6F6),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    disabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    errorBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(10),borderSide: const BorderSide(color: Color(0xFFE8E8E8))),
                    prefixIcon: const Icon(Icons.phone),
                    labelText: "Phone Number",
                    prefixText: "+91",
                    labelStyle: const TextStyle(color: Color(0xFF838383))
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                  maxLength: 10,
                ),
              ),
              Divider(color: const Color(0xFF918080).withOpacity(0.25),thickness: 0.5,indent: 10,endIndent: 10,),
              const SizedBox(height: 10,),
              const Text("Choose Date & Time",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppFont.primary,color: Color(0xFF2D2D2D)),),
              Container(
                height: 250,
                margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                decoration:
                BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  border: Border.all(color: const Color(0xFFE8E8E8)),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: CupertinoDatePicker(
                  dateOrder: DatePickerDateOrder.dmy,
                  showDayOfWeek: true,
                  mode: CupertinoDatePickerMode.dateAndTime,
                  initialDateTime: DateTime.now(),
                  maximumYear: DateTime.now().year+1,
                  minimumDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,DateTime.now().hour,DateTime.now().minute),
                  onDateTimeChanged: (value) {

                },),
              ),
              // const Spacer(),
              AppButtonPrimary(onTap: () {}, text: "Register")
            ],
          ),
        ),
      ));
    },);
  }
}
