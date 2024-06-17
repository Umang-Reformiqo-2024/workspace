import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/controller/home/item_list_screen_controller.dart';
import '../../app_data/app_colors/app_color.dart';
import '../../widgets/recommended_space_widget.dart';
import 'item_detail_screen.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ItemListScreenController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    ListView.builder(
                      itemCount: controller.itemListHome.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Material(
                          color: Colors.transparent,
                          child: RecommendedSpaceItem(
                            heroTag: "Hero_Tag_$index",
                            pngAssetPath: controller.itemListHome[index].pngAssetPath,
                            title: controller.itemListHome[index].title,
                            description: controller.itemListHome[index].subTitle,
                            favIcon: Icon(controller.itemListHome[index].isFavourite?Icons.favorite_outlined:Icons.favorite_outline_sharp,color:controller.itemListHome[index].isFavourite?AppColor.red: Colors.white,),
                            onTapItem: () => Get.to(()=> ItemDetailScreen(itemDetail: controller.itemListHome[index],heroTag: "Hero_Tag_$index",),duration: const Duration(milliseconds: 500),transition: Transition.fade,curve: Curves.ease),
                            onTapFavIcon:  () => controller.onTapFavButton(index:index),
                          ),
                        );},
                    ),
                  ],
                ),
              ),
            ),
          ),);
      },
    );
  }
}
