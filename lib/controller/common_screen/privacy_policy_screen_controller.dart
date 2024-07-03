import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PrivacyPolicyScreenController extends GetxController{

  final WebViewController webViewController =WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    // ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {
        },
        onHttpError: (HttpResponseError error) {},
        onWebResourceError: (WebResourceError error) {},
        // onNavigationRequest: (NavigationRequest request) {
        //   if (request.url.startsWith('https://www.youtube.com/')) {
        //     return NavigationDecision.prevent;
        //   }
        //   return NavigationDecision.navigate;
        // },
      ),
    )
    ..loadRequest(Uri.parse('https://workspaceco.in/privacy-policy/'))
    ..runJavaScript(
        """
        document.addEventListener('DOMContentLoaded', function() {
        document.querySelector('.elementor-185 .elementor-element.elementor-element-a0c58bb').style.display = 'none';
        });
        """
    );


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // webViewController..setJavaScriptMode(JavaScriptMode.unrestricted)
    //   ..loadRequest(Uri.parse('https://workspaceco.in/privacy-policy/'));
    // update();
  }
}