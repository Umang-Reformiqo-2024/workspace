// import 'dart:ui';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:get/get.dart';
// import 'package:workspace/app_data/app_fonts/app_font.dart';
//
// class TabBarWidgetController extends GetxController{
//   RxInt tabIndex=0.obs;
//
//   void onChangeTab({required int index}){
//     tabIndex.value = index;
//   }
// }
// class TabBarWidget extends StatelessWidget {
//   String firstTab;
//   String secondTab;
//   final ValueChanged<int> onTabChanged;
//   BoxDecoration selectedTabDecoration;
//   BoxDecoration backgroundBoxDecoration;
//   TextStyle selectedTabTextStyle;
//   TextStyle unselectedTabTextStyle;
//
//   TabBarWidget({
//     super.key,
//     required this.firstTab,
//     required this.secondTab,
//     required this.onTabChanged,
//     this.selectedTabDecoration =const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),border: Border.fromBorderSide(BorderSide(color: Color(0xFFD9D9D9))), color: Color(0xFFFFFFFF),),
//     this.backgroundBoxDecoration= const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)), color: Color(0xFF2F2F2F)),
//     this.selectedTabTextStyle=const TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF),fontSize: 16),
//     this.unselectedTabTextStyle=const TextStyle(fontWeight: FontWeight.normal,color: Color(0xFF2F2F2F),fontSize: 16),
//   });
//
//   TabBarWidgetController tabBarWidgetController = Get.put(TabBarWidgetController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Container(
//         height: 50,
//         width: 220,
//         padding: const EdgeInsets.all(5),
//         decoration: selectedTabDecoration,
//         child: Stack(
//           children: [
//             AnimatedAlign(
//               alignment: tabBarWidgetController.tabIndex.value == 1 ? Alignment.centerLeft : Alignment.centerRight,
//               duration: const Duration(milliseconds: 200),
//               child: Container(
//                 width: 100,
//                 decoration: backgroundBoxDecoration,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     tabBarWidgetController.onChangeTab(index: 1);
//                     onTabChanged(1);
//                   },
//                   onVerticalDragStart: (details) {
//                     tabBarWidgetController.onChangeTab(index: 2);
//                     onTabChanged(2);
//                   },
//                   child: Container(
//                     width: 100,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       // color: Colors.amber
//                     ),
//                     child: Center(child: Text("$firstTab",style:tabBarWidgetController.tabIndex.value == 1 ? selectedTabTextStyle : unselectedTabTextStyle,)),
//                   ),
//                 ),GestureDetector(
//                   onTap: () {
//                     tabBarWidgetController.onChangeTab(index: 2);
//                     onTabChanged(2);
//                   },
//                   onVerticalDragStart: (details) {
//                     tabBarWidgetController.onChangeTab(index: 1);
//                     onTabChanged(1);
//                   },
//                   child: Container(
//                     width: 100,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       // color: Colors.amber,
//                     ),
//                     child: Center(child: Text("$secondTab",style:  tabBarWidgetController.tabIndex.value == 2 ? selectedTabTextStyle : unselectedTabTextStyle,)),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         )
//     ),);
//   }
// }
