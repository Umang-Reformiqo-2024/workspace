import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:workspace/controller/common_screen/privacy_policy_screen_controller.dart';

import '../../app_data/app_fonts/app_font.dart';
import '../../widgets/common_widgets/app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PrivacyPolicyScreenController(),
      builder: (controller) {
        return SafeArea(child: Scaffold(
          backgroundColor: Colors.white,
          appBar: WorkSpaceCoAppBar(title: "Privacy Policy",titleSize: 20,),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(child: WebViewWidget(controller: controller.webViewController)),
          ),
        ));
      },
    );
  }
}
