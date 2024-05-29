import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:workspace/controller/home_controller.dart';

import '../widgets/category_widget.dart';
import '../widgets/recommended_space_widget.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Image.asset("assets/icons/test_icons/app_logo.png"),
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
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/icons/svg_icons/filters_icon.svg",height: 50,width: 50,),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  // Categories
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryItem(
                          iconPath: 'assets/icons/test_icons/meeting_room.png',
                          label: 'Meeting Room',
                          isSelected: true,
                        ),
                        CategoryItem(
                          iconPath: 'assets/icons/test_icons/virtual_office.png',
                          label: 'Virtual Office',
                        ),
                        CategoryItem(
                          iconPath: 'assets/icons/test_icons/office_space.png',
                          label: 'Office Space',
                        ),
                        CategoryItem(
                          iconPath: 'assets/icons/test_icons/training_room.png',
                          label: 'Training Room',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Recommended Space
                  Text(
                    'Recommended Space',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Recommended Space Item
                  RecommendedSpaceItem(
                    imagePath: 'assets/icons/test_icons/item_1.png',
                    title: 'Pitch - Conference Room 10 Seater',
                    description: 'Lorem ipsum dolor sit amet,',
                    favIcon: Icon(Icons.favorite_border,color: Colors.white,),
                  ),
                  SizedBox(height: 16),
                  RecommendedSpaceItem(
                    imagePath: 'assets/icons/test_icons/item_2.png',
                    title: 'Co-Working Space',
                    description: 'Lorem ipsum dolor sit amet,',
                    favIcon: Icon(Icons.favorite_border,color: Colors.white,),),
                  SizedBox(height: 16),
                  VectorGraphic(loader: SvgAssetLoader("assets/icons/svg_icons/filters_icon.svg"))
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Team',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Account',
              ),
            ],
          ),
        ));
      },
    );
  }
}


