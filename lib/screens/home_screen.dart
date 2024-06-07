import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/home_controller.dart';
import 'package:workspace/controller/item_detail_controller.dart';
import 'package:workspace/screens/item_detail_screen.dart';

import '../widgets/category_widget.dart';
import '../widgets/recommended_space_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) {
        return SafeArea(
            child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            shadowColor: Colors.white,
            surfaceTintColor: Colors.white,
            title: Row(
              children: [
                Image.asset("assets/icons/test_icons/app_logo.png"),
                const Spacer(),
                const Icon(
                  Icons.notifications_on_outlined,
                  size: 32,
                  color: AppColor.black,
                )
              ],
            ),
            centerTitle: false,
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search Bar
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Now',
                            hintStyle: const TextStyle(
                              fontFamily: AppFont.primary,
                              fontWeight: FontWeight.normal,
                              color: AppColor.grayTextFieldHint
                            ),
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor: AppColor.grayTextFieldHint,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                        ),
                      ),
                      //Filter Button
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            QuickAlert.show(
                                context: context,
                                type: QuickAlertType.custom,
                                animType: QuickAlertAnimType.slideInUp,
                                borderRadius: 20,
                                title: "Filter",
                                confirmBtnText: "Apply",
                                confirmBtnColor: AppColor.red,
                                widget: Column(
                                  children: List.generate(
                                    3,
                                    (index) => Container(
                                        height: 50,
                                        margin: const EdgeInsets.all(5),
                                        color: Colors.amber.withOpacity(0.5)),
                                  ),
                                ));
                          },
                          child: SvgPicture.asset(
                            "assets/icons/svg_icons/filters_icon.svg",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  // Categories
                  SizedBox(
                    height: 100,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: controller.categoryItemAssetString.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisExtent: 100,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return CategoryItem(
                            svgAssetPath: controller.categoryItemAssetString[index].assetPath,
                            label: controller.categoryItemAssetString[index].lable,
                            index: index,
                            selectedIndex: controller.selectedCategoryIndex,
                            onTap: () => controller.onTapCategoryItem(index: index),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Recommended Space
                  const Text(
                    'Recommended Space',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                    );
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
      },
    );
  }
}
