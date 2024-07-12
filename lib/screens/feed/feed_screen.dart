import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/controller/feed/feed_screen_controller.dart';
import 'package:workspace/screens/feed/add_new_feed_screen.dart';
import 'package:workspace/widgets/common_widgets/app_navigator.dart';

import '../../app_data/app_fonts/app_font.dart';
import '../../widgets/common_widgets/app_bar.dart';

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
            appBar: WorkSpaceCoAppBar(title: "Feed",titleSize: 20,),
            body: ListView.builder(itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, -1),
                          blurRadius: 4,
                          spreadRadius: 2
                      )
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(20))
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
                        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.share,color: AppColor.black,))
                        // IconButton(onPressed: () {
                        //
                        // }, icon: const Icon(Icons.more_vert)),
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
                        IconButton(onPressed: () {showBottomSheetOfComment(context: context);}, icon: const Icon(Icons.comment,color: AppColor.black,)),
                        const Text("45"),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              );
            },),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                AppNavigator.screenTo(screen: const AddNewFeedScreen());
              },
              backgroundColor: AppColor.blackText,
              shape: const OvalBorder(),
              child: const Icon(Icons.add,color: Colors.white,),
            ),
          ),
        );
      },
    );
  }
  showBottomSheetOfComment({required BuildContext context}){
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      builder: (context) {
        return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0, -1),
                      blurRadius: 4,
                      spreadRadius: 2
                  )
                ],
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    margin:index==0?const EdgeInsets.fromLTRB(5, 75, 5, 5): const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, -1),
                              blurRadius: 4,
                              spreadRadius: 2
                          )
                        ],
                        borderRadius: const BorderRadius.all(Radius.circular(20))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: AppColor.blackText,
                                  borderRadius: BorderRadius.circular(100)
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("User Name $index"),
                                const Text("12-07-2024",style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300
                                ),),
                              ],
                            ),
                          ],
                        ),
                        const Divider(indent: 10,endIndent: 10,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8,right: 8,bottom: 8),
                          child: Text("Every Users comments displayed here after anyone comment here on any perticular post."),
                        )
                      ],
                    ),
                  );
                },),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 3),
                            blurRadius: 4,
                            spreadRadius: 2
                        )
                      ],
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 10,right: 5),
                        hintText: "Comment here",
                        suffix: TextButton(onPressed: () {

                        }, child: const Text("Post"))
                    ),
                  ),
                )
              ],
            )
        );
      },);
  }
}
