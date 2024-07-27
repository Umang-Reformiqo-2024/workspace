import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/payment_methods/payment_methods_screen_controller.dart';
import 'package:workspace/widgets/common_widgets/app_bar.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PaymentMethodsScreenController(),
      builder: (controller) {
      return SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        appBar: WorkSpaceCoAppBar(title: "Payment Methods",),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            const Text("Cards",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppFont.primary),),
            Container(
              height: 60,
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1),
                        blurRadius: 2,
                        spreadRadius: 1
                    )
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: double.infinity,
                    margin: const EdgeInsets.all(10),
                    child: const Icon(Icons.add_card),
                  ),
                  const Text("Add credit or debit cards",style: TextStyle(fontFamily: AppFont.primary,fontSize: 16),),
                  const Spacer(),
                  Container(
                    width: 50,
                    height: double.infinity,
                    margin: const EdgeInsets.all(10),
                    child: const Center(child: Text("Add",style: TextStyle(fontSize: 16,fontFamily: AppFont.primary,fontWeight: FontWeight.bold,color: AppColor.red),)),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              height: controller.isExpandCard?200:60,
              duration: const Duration(milliseconds: 0),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 1),
                        blurRadius: 2,
                        spreadRadius: 1
                    )
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: double.infinity,
                          margin: const EdgeInsets.all(10),
                          child: Image.asset("assets/v2/png/masterCardLogo.webp"),
                        ),
                        const VerticalDivider(indent: 5,endIndent: 5,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("User Name",style: TextStyle(fontFamily: AppFont.primary,fontSize: 16),),
                            Text("xxxx xxxx 9101",style: TextStyle(fontFamily: AppFont.primary,fontSize: 16),),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 50,
                          height: double.infinity,
                          margin: const EdgeInsets.all(10),
                          child: Center(child: IconButton(onPressed: () => controller.onTapExpandCard(), icon:controller.isExpandCard?const Icon(Icons.keyboard_arrow_up): const Icon(Icons.keyboard_arrow_down))),
                        ),
                      ],
                    ),
                  ),
                  controller.isExpandCard?
                  AnimatedOpacity(
                      opacity: controller.isExpandCard?1:0,
                    duration: const Duration(milliseconds: 100),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(),
                          const SizedBox(height: 10,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text("Card Number "),
                                   Text("Card Expiry "),
                                   Text("Card CVV    "),
                                 ],
                               ),
                               SizedBox(width: 10,),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(": 1234 5678 9101"),
                                   Text(": 12/12"),
                                   Text(": 000"),
                                 ],
                               )
                             ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(onPressed: () {

                              }, icon: const Icon(Icons.edit,color: AppColor.red,)),
                              IconButton(onPressed: () {

                              }, icon: const Icon(Icons.delete_forever,color: AppColor.red,)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ):const SizedBox.shrink()
                ],
              ),
            ),
          ],
        ),
      ));
    },);
  }
}
