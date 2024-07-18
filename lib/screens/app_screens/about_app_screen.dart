import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';

import '../../widgets/common_widgets/app_bar.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WorkSpaceCoAppBar(title: "About this App.",titleSize: 20,),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset("assets/v2/svg/app_logo.svg",height: 500,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Developed By,"),
                const SizedBox(height: 10,),
                Image.asset("assets/v2/png/reformiqo.webp",width: 200,),
              ],
            ),
            // Spacer(),
            const Text("com.workspaceco.app",style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.bold,fontFamily: AppFont.primary
            ),),
            const Text("Version 1.1 as on 18/07/2024",style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w500,fontFamily: AppFont.primary
            ),),
          ],
        ),
      ),
    );
  }
}
