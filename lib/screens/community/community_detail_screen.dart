import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/community/community_detail_screen_controller.dart';

import '../../widgets/common_widgets/app_bar.dart';

class CommunityDetailScreen extends StatelessWidget {
  const CommunityDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CommunityDetailScreenController(),
      builder: (controller) {
      return SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        appBar: WorkSpaceCoAppBar(title: "Company Name",titleSize: 20,),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10,top: 5),
                child: Text("5 Members",style: TextStyle(color: Color(0xFF575757),fontFamily: AppFont.primary,fontWeight: FontWeight.normal,fontSize: 14),),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                            height: 40,
                            width: 40,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: const LinearGradient(colors: [Color(0xFF525151),Color(0xFF262626)])
                            ),
                            child: const Icon(Icons.image_outlined,color: Colors.white,),
                          ),
                          Column  (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Member Name ${index+1}",style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppFont.primary,
                                  color: Color(0xFF2D2D2D)
                              ),),
                              const Text("Designation",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: AppFont.primary,
                                  color: Color(0xFF575757)
                              ),),
                            ],
                          )
                        ],
                      ),
                    );
                },),
              )
            ],
          ),
        ),
      ));
    },);
  }
}
