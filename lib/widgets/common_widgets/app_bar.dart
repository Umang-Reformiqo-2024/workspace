import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/screens/common_screen/help_and_support_screen.dart';
import 'package:workspace/screens/common_screen/notification_screen.dart';
import '../../app_data/app_fonts/app_font.dart'; // Adjust the path based on your project structure

class WorkSpaceCoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color appBarColor;
  final bool forceMaterialTransparency;
  final bool automaticallyLeading;
  final Color titleColor;
  final double titleSize;
  final FontWeight titleFontWeight;
  final String titleFontFamily;
  final bool actionIconColorIsWhite;
  final List<Widget> titleActions;

  WorkSpaceCoAppBar({
    this.title = "WorkSpaceCo",
    this.appBarColor = Colors.white,
    this.forceMaterialTransparency = true,
    this.automaticallyLeading = true,
    this.titleColor = Colors.black,
    this.titleSize = 22,
    this.titleFontWeight = FontWeight.bold,
    this.titleFontFamily = "proximanovaRegular",
    this.actionIconColorIsWhite = false,
    List<Widget>? titleActions,
  }): titleActions = titleActions ?? _defaultActions(actionIconColorIsWhite);
  static List<Widget> _defaultActions(bool actionIconColorIsWhite) {
    return [
      GestureDetector(
        onTap: () {
          Get.to(() => const NotificationScreen(),duration: Duration(milliseconds: 400),curve: Curves.easeInOut,transition: Transition.zoom);
        },
        child: Image.asset("assets/v2/png/notification_icon.png",height: 24,color: actionIconColorIsWhite?Colors.white:null),
      ),
      const SizedBox(width: 15),
      GestureDetector(onTap: () {
    Get.to(() => HelpAndSupportScreen(),duration: Duration(milliseconds: 400),curve: Curves.easeInOut,transition: Transition.zoom);
    },child: Image.asset("assets/v2/png/help_and_support_icon.png",height: 24,color: actionIconColorIsWhite?Colors.white:null),),
      const SizedBox(width: 20),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      forceMaterialTransparency: forceMaterialTransparency,
      automaticallyImplyLeading: automaticallyLeading,
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: titleSize,
          fontWeight: titleFontWeight,
          fontFamily: titleFontFamily,
        ),
      ),
      actions: titleActions,
      leadingWidth: 30,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
