import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/membership/membership_screen_controller.dart';

class MembershipScreen extends StatelessWidget {
  const MembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MembershipScreenController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: const Color(0xFF2F2F2F),
              appBar: AppBar(
                forceMaterialTransparency: true,
                automaticallyImplyLeading: true,
                title: const Text("Membership",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                actions: [const Icon(Icons.message_outlined,color: Colors.white,),const SizedBox(width: 10,),const Icon(Icons.info_outline,color: Colors.white,),const SizedBox(width: 10,)],
              ),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          margin: const EdgeInsets.only(left: 10,top: 10,right: 10),
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
                          decoration: const BoxDecoration(
                            color: Color(0xFF1E1E1E),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                const Text("Available Credits",style: TextStyle(fontSize: 18,color: Color(0xFFADADAD),fontFamily: AppFont.primary),),
                                IconButton(onPressed: () {

                                }, icon: const Icon(Icons.info_outline,color: Colors.white,))
                              ],),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                Text("+ 25.5",style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: AppFont.primary),),
                                SizedBox(width: 10,),
                                Text("Credits",style: TextStyle(fontSize: 14,color: Color(0xFFADADAD),fontFamily: AppFont.primary),),
                                Spacer(),
                                Text("1 Credit = 500 \u{20B9}",style: TextStyle(fontSize: 14,color: Color(0xFFADADAD),fontFamily: AppFont.primary),),
                              ],),

                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(left: 10,top: 0,right: 10,bottom: 10),
                          decoration: const BoxDecoration(
                            color: Color(0xFF000000),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                          ),
                          child: const Center(child: Text("Add Credits ⭐",style: TextStyle(color: Colors.white,fontFamily: AppFont.primary,fontWeight: FontWeight.bold),),),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  height: 4,
                                  width: 60,
                                  margin: const EdgeInsets.only(top: 10,bottom: 20),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF464646),
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                              ),
                              const Text("Transaction History",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              const SizedBox(height: 10,),
                              Flexible(
                                child: AnimationLimiter(
                                  child: ListView.builder(
                                    //itemCount: 2,
                                    itemCount: 31,
                                    itemBuilder: (context, index) {
                                    return AnimationConfiguration.staggeredList(
                                      position: index,
                                      duration: const Duration(milliseconds: 700),
                                      delay: const Duration(milliseconds: 300),
                                      child: SlideAnimation(
                                        horizontalOffset: 70.0,
                                        delay: const Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                        child: FadeInAnimation(
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(vertical: 5),
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFFFFFF),
                                              border: Border.all(color: const Color(0xFFCACACA)),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                const SizedBox(width: 10,),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Text("${index+1} Mar",style: const TextStyle(fontWeight: FontWeight.bold),),
                                                    const Text("2024",style: TextStyle(color: Color(0xFFADADAD),fontSize: 10),),
                                                  ],
                                                ),
                                                const VerticalDivider(indent: 10,endIndent: 10,),
                                                const Expanded(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Pitch - Conference Room 10 Seater",style: TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),overflow: TextOverflow.ellipsis,softWrap: true,),
                                                      Text("8 Members | 2 Hrs",style: TextStyle(color: Color(0xFFADADAD),fontSize: 12),),
                                                    ],
                                                  ),
                                                ),
                                                const VerticalDivider(indent: 10,endIndent: 10,),
                                                index%2==0
                                                    ? const Text("-3 C",style: TextStyle(color: AppColor.red,fontWeight: FontWeight.bold,fontSize: 15),)
                                                    : const Text("+5 C",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 15),),
                                                const SizedBox(width: 10,)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
        ));
      },
    );
  }
}
