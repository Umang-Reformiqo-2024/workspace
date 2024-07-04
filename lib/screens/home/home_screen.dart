import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:workspace/screens/bookings/my_bookings_screen.dart';
import 'package:workspace/screens/home/wsc_location_detail_screen.dart';
import 'package:workspace/screens/membership/membership_screen.dart';
import 'package:workspace/screens/user_account/user_account_screen.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
    title: 'Home',
  ),
  TabItem(
    icon: Icons.access_time_rounded,
    title: 'Bookings',
  ),
  TabItem(
    icon: Icons.account_box,
    title: 'Account',
  ),
  TabItem(
    icon: Icons.workspace_premium_outlined,
    title: 'Membership',
  ),
];

class HomeScreen extends StatefulWidget {
  int bottomIndex = 0;
  HomeScreen({super.key, this.bottomIndex=0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int visit = 0;

  double height = 30;

  Color colorSelect =const Color(0XFF0686F8);

  Color color = const Color(0XFF7AC0FF);

  Color color2 = const Color(0XFF96B1FD);

  Color bgColor = const  Color(0XFF1752FE);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.bottomIndex,
        children: const [
          WscLocationDetailScreen(),
          MyBookingsScreen(),
          UserAccountScreen(),
          MembershipScreen(),
        ],
      ),
      bottomNavigationBar: BottomBarDefault(
        items: items,
        backgroundColor: Colors.white,
        color: const Color(0xFF5D5D5D),
        colorSelected: const Color(0xFF2F2F2F),
        indexSelected: widget.bottomIndex,
        onTap: (index) {
          setState(() {
            widget.bottomIndex = index;
          });
        },
        enableShadow: true,
        animated: true,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, -1)
          )
        ],
      ),
    );
  }
}
