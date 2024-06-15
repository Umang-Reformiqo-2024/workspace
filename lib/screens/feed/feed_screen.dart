import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/controller/feed/feed_screen_controller.dart';

import '../../app_data/app_fonts/app_font.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: FeedScreenController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const Text("Feed"),
              forceMaterialTransparency: true,
              automaticallyImplyLeading: true,
              centerTitle: true,
            ),
            body: ListView.builder(itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFCACACA)),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                        const Column  (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("John Doe",style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppFont.primary,
                                color: Color(0xFF2D2D2D)
                            ),),
                            Text("1h ago",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                fontFamily: AppFont.primary,
                                color: Color(0xFF575757)
                            ),),
                          ],
                        ),
                        const Spacer(),
                        IconButton(onPressed: () {

                        }, icon: const Icon(Icons.more_vert)),
                      ],
                    ),
                    const Divider(indent: 5,endIndent: 5,),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Join a vibrant community of professionals and elevate your work experience.",textAlign: TextAlign.start,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("assets/v2/png/location_2.webp")),
                    ),
                    const Divider(indent: 5,endIndent: 5,),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outlined,color: AppColor.red,)),
                        const Text("180"),
                        const SizedBox(width: 10,),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.comment,color: AppColor.black,)),
                        const Text("45"),
                        const Spacer(),
                        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.share,color: AppColor.black,))
                      ],
                    )
                  ],
                ),
              );
            },),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColor.blackText,
              shape: const OvalBorder(),
              child: const Icon(Icons.add,color: Colors.white,),
            ),
          ),
        );
      },
    );
  }
}
