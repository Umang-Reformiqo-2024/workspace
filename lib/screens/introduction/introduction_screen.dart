import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/controller/introduction/introduction_screen_controller.dart';
import 'package:workspace/widgets/introduction_screen_widget/introduction_indicator_widget.dart';
import 'package:workspace/widgets/introduction_screen_widget/introduction_screen_widget.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: IntroductionScreenController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                transform: Matrix4.translationValues(
                  0,
                  controller.startNextPageAnimation ? -MediaQuery.of(context).size.height * 1 : 0,
                  0,
                ),
                child: AnimatedOpacity(
                  opacity: controller.startNextPageAnimation ? 0 : 1,
                  duration: Duration(seconds: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/v2/png/app_logo.webp",
                        height: 200,
                        width: 200,
                      ),
                      Expanded(
                        child: PageView(
                          controller: controller.pageController,
                          onPageChanged: (value) => controller.onPageChanged(value),
                          children: [
                            IntroductionScreenWidget(
                                webpImage: "assets/v2/png/intro_1.webp",
                                title: "Welcome to Your Collaborative Workspace",
                                description: "Step into a dynamic and productive environment designed to enhance collaboration and creativity. Our coworking space is equipped with all the amenities you need to thrive",),
                            IntroductionScreenWidget(
                                webpImage: "assets/v2/png/intro_2.webp",
                                title: "Efficient and Modern Meeting Rooms",
                                description: "Our meeting rooms are designed to facilitate productive discussions and seamless collaborations. Experience a professional environment that supports your business needs and enhances your collaborative efforts."),
                            IntroductionScreenWidget(
                                webpImage: "assets/v2/png/intro_3.webp",
                                title: "Personalized Cabin Spaces",
                                description: "Discover the comfort and privacy of our personalized cabin spaces, designed to provide you with a focused and productive work environment. Enjoy the tranquility of a private workspace that fosters efficiency and creativity."),
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: Row(
                              children: [
                                IntroductionIndicatorWidget(isDarken:controller.currentPage==0?true:false),
                                IntroductionIndicatorWidget(isDarken: controller.currentPage==1?true:false),
                                IntroductionIndicatorWidget(isDarken: controller.currentPage==2?true:false),
                              ],
                            ),
                          )),
                      GestureDetector(
                        onTap: () => controller.onTapLetsStart(),
                        child: Container(
                          height: 60,
                          margin: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xFF2F2F2F)),
                          child: const Center(
                            child: Text(
                              "Let`s Start",
                              style: TextStyle(
                                  fontFamily: AppFont.primary,
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                      //IntroductionScreenWidget(image: "assets/v2/png/app_logo.webp", title: "title", description: "description")
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
