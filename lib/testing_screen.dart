// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: Scaffold(
//         backgroundColor: Color(0xFFEBEBEB),
//         appBar: AppBar(title: Text('Tab Bar with Animation')),
//         body: Center(
//           child: TabBarWidget(),
//         ),
//       ),
//     );
//   }
// }
//
// class TabControllerX extends GetxController {
//   var selectedIndex = 0.obs;
//
//   void selectTab(int index) {
//     selectedIndex.value = index;
//   }
// }
//
// class TabBarWidget extends StatelessWidget {
//   final TabControllerX controller = Get.put(TabControllerX());
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Obx(
//   //         () => Container(
//   //           width: 200,
//   //           height: 50,
//   //           decoration: BoxDecoration(
//   //             color: Color(0xFFFFFFFF),
//   //             borderRadius: BorderRadius.circular(50),
//   //             border: Border.all(color: Color(0xFFD9D9D9))
//   //           ),
//   //           child: Row(
//   //                   mainAxisAlignment: MainAxisAlignment.center,
//   //                   children: [
//   //           TabButton(
//   //             text: 'Companies',
//   //             isSelected: controller.selectedIndex.value == 0,
//   //             onTap: () => controller.selectTab(0),
//   //           ),
//   //           TabButton(
//   //             text: 'Users',
//   //             isSelected: controller.selectedIndex.value == 1,
//   //             onTap: () => controller.selectTab(1),
//   //           ),
//   //                   ],
//   //                 ),
//   //         ),
//   //   );
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       child: Stack(
//         children: [
//           Obx(
//                 () => AnimatedPositioned(
//               duration: Duration(milliseconds: 300),
//               left: controller.selectedIndex.value == 0 ? 0 : MediaQuery.of(context).size.width / 2,
//               child: Container(
//                 height: 50,
//                 width: MediaQuery.of(context).size.width / 2,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: TabButton(
//                   text: 'Companies',
//                   isSelected: controller.selectedIndex.value == 0,
//                   onTap: () => controller.selectTab(0),
//                 ),
//               ),
//               Expanded(
//                 child: TabButton(
//                   text: 'Users',
//                   isSelected: controller.selectedIndex.value == 1,
//                   onTap: () => controller.selectTab(1),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class TabButton extends StatelessWidget {
//   final String text;
//   final bool isSelected;
//   final VoidCallback onTap;
//
//   const TabButton({
//     required this.text,
//     required this.isSelected,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300),
//         padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//         margin: EdgeInsets.symmetric(horizontal: 4),
//         decoration: BoxDecoration(
//           color: isSelected ? Colors.black : Colors.white,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Text(
//           text,
//           style: TextStyle(
//             color: isSelected ? Colors.white : Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }
