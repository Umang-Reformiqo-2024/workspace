import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:workspace/screens/bookings/my_bookings_screen.dart';
import 'package:workspace/screens/cafe_shop/shop_home_screen.dart';
import 'package:workspace/screens/home/wsc_location_detail_screen.dart';
import 'package:workspace/screens/membership/membership_screen.dart';
import 'package:workspace/screens/user_account/user_account_screen.dart';
class HomeScreen extends StatefulWidget {
  int bottomIndex = 0;
  HomeScreen({super.key, this.bottomIndex=0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          WscLocationDetailScreen(),
          MyBookingsScreen(),
          ShopHomeScreen(),
          UserAccountScreen(),
          MembershipScreen(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        currentIndex: widget.bottomIndex,
        onTap: (value) {
          setState(() {
            _pageController.jumpToPage(value);
            widget.bottomIndex = value ;
          });
        },
        elevation: 50,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20)
        ),
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.transform3D,
          iconStyle: IconStyle.Default,
          padding: const EdgeInsets.only(top: 5),
        ),
        items: [
          // BottomBarItem(icon: Container(), title: const Text("Home")),
          BottomBarItem(icon: Image.asset("assets/v2/png/new_home_icon.webp",height: 25,width: 25,), title: const Text("Home",style: TextStyle(fontSize: 12),),selectedColor: Colors.black),
          BottomBarItem(icon: Image.asset("assets/v2/png/bookings_icon.webp",height: 25,width: 25,), title: const Text("Bookings",style: TextStyle(fontSize: 12),),selectedColor: Colors.black),
          BottomBarItem(icon: Image.asset("assets/v2/png/shop_icon.webp",height: 25,width: 25,), title: const Text("Shop",style: TextStyle(fontSize: 12),),selectedColor: Colors.black),
          BottomBarItem(icon: Image.asset("assets/v2/png/account_icon.webp",height: 25,width: 25,), title: const Text("Account",style: TextStyle(fontSize: 12),),selectedColor: Colors.black),
          BottomBarItem(icon: Image.asset("assets/v2/png/membership_icon.webp",height: 25,width: 25,), title: const Text("Membership",style: TextStyle(fontSize: 12),),selectedColor: Colors.black),
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
