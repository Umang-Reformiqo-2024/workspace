import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/home/wsc_location_controller.dart';
import 'package:workspace/controller/home/wsc_location_detail_screen_controller.dart';
import 'package:workspace/screens/home/wsc_location_detail_screen.dart';
import 'package:workspace/widgets/common_widgets/button_widget.dart';

class WscLocationScreen extends StatelessWidget {
  const WscLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: WscLocationController(),
      builder: (controller) => Scaffold(
        backgroundColor: Color(0xFFEBEBEB),
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Image.asset("assets/v2/png/app_logo.webp",height: 150,width: 150,fit: BoxFit.fill,),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          actions: const [Icon(Icons.message_outlined),SizedBox(width: 10,),Icon(Icons.info_outline),SizedBox(width: 10,)],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Location",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
                      const SizedBox(height: 10,),
                      DropdownMenu(
                          hintText: "Select Location",
                          menuStyle: const MenuStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.white),
                          ),
                          width: 200,
                          onSelected: (value) {
                            debugPrint("===[$value]===");
                          },
                          dropdownMenuEntries: controller.workSpaceLocations
                              .map((location) => DropdownMenuEntry(
                              label: location.title??"",
                              value: location.title??"",
                              leadingIcon: Image.asset(location.logo??"",height: 60,width: 60,scale: 1,)
                          )).toList()),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Number of people",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
                      const SizedBox(height: 10,),
                      DropdownMenu(
                          hintText: "1",
                          menuStyle: const MenuStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.white),
                          ),
                          width: 150,
                          onSelected: (value) {
                            debugPrint("===[$value]===");
                          },
                          dropdownMenuEntries: ['1', '2', '3','4','5','6','7','8','9','10','11','12']
                              .map((location) => DropdownMenuEntry(
                              label: location,
                              value: location,
                              //leadingIcon: Image.asset("assets/v2/png/app_logo.webp",height: 60,width: 60,scale: 1,)
                          )).toList()),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Type of workspace",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
                      const SizedBox(height: 10,),
                      DropdownMenu(
                          hintText: "Meeting Room",
                          menuStyle: const MenuStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.white),
                          ),
                          width: 200,
                          onSelected: (value) {
                            debugPrint("===[$value]===");
                          },
                          dropdownMenuEntries: ['Meeting Room', 'Personal Cabin', 'Dedicated Desk']
                              .map((location) => DropdownMenuEntry(
                              label: location,
                              value: location,
                              //leadingIcon: Image.asset("assets/v2/png/app_logo.webp",height: 60,width: 60,scale: 1,)
                          )).toList()),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              AppButtonPrimary(onTap: () {

              }, text: "Book Now",buttonMargin: EdgeInsets.zero,),
              Container(
                height: 40,
                padding: const EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12.withOpacity(0.055),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, -1)
                      ),
                    ],
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 5,
                    width: 70,
                    decoration: BoxDecoration(
                        color: const Color(0xFF464646),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 20,),
              ColoredBox(
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    const Text("Our Locations",style: TextStyle(fontFamily: AppFont.primary,fontWeight: FontWeight.bold,fontSize: 22),),
                  ],
                ),
              ),
              // const SizedBox(height: 20,),
              Expanded(
                child: ColoredBox(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                    return locationCard(index: index,onTapLocation: () => Get.to(()=> WscLocationDetailScreen(),duration: Duration(milliseconds: 700),transition: Transition.cupertino,curve: Curves.easeInOut),);
                  },),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget locationCard({required int index, required Function() onTapLocation}){
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () => onTapLocation(),
      child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: const Color(0xFFCACACA))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150,width:double.infinity,child: ClipRRect(borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),child: Image.asset("assets/v2/png/location_${index+1}.webp",fit: BoxFit.cover,),),),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("WorkSpaceCo. City Center",style: TextStyle(fontFamily: AppFont.primary,fontSize: 20,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10,bottom: 20),
                child: Row(children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Container(width: 10,height: 10,decoration: BoxDecoration(
                            color: const Color(0xFFF15C5C),
                            borderRadius: BorderRadius.circular(50)
                        ),),
                        const SizedBox(width: 5,),
                        const Text("Rooms")
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    child: Row(
                      children: [
                        Container(width: 10,height: 10,decoration: BoxDecoration(
                            color: const Color(0xFFF15C5C),
                            borderRadius: BorderRadius.circular(50)
                        ),),
                        const SizedBox(width: 5,),
                        const Text("Desk")
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    child: Row(
                      children: [
                        Container(width: 10,height: 10,decoration: BoxDecoration(
                            color: const Color(0xFFC3C3C3),
                            borderRadius: BorderRadius.circular(50)
                        ),),
                        const SizedBox(width: 5,),
                        const Text("Cabins")
                      ],
                    ),
                  ),
                ],),
              )
            ],
          )),
    );
  }
}
