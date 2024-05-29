import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/app_data/app_fonts/app_font.dart';
import 'package:workspace/app_data/app_strings/app_string.dart';
import 'package:workspace/controller/signup_controller.dart';
import 'package:workspace/widgets/button_widget.dart';
import 'package:workspace/widgets/text_field_widget.dart';
import 'package:workspace/widgets/text_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignupController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child:
                          Image.asset("assets/icons/test_icons/app_logo.png"),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget.simpleText(
                        data: "Create Account",
                        fontFamily: AppFont.primary,
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget.simpleText(
                        data:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing",
                        fontFamily: AppFont.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFieldWidget.simpleTextField(
                      controller: controller.nameController,
                      keyboardType: TextInputType.name,
                      lable: "Name",
                    ),
                    TextFieldWidget.simpleTextField(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      lable: "Email",
                    ),
                    TextFieldWidget.simpleTextField(
                      controller: controller.passwordController,
                      keyboardType: TextInputType.text,
                      lable: "Password",
                      suffix: InkWell(onTap: () => controller.onTapShowPassword(),child: controller.isPasswordHidden ? const Text("Show") : const Text("Hide")),
                      isTextHidden: controller.isPasswordHidden
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: controller.isTermsAndConditionIsSelected,
                            onChanged: (value) => controller.onSelectingTermsAndCondition(value: value!),
                            activeColor: AppColor.black,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget.simpleText(data: AppString.iAgreeTo),
                              TextWidget.simpleText(
                                data: AppString.termsOfService,
                                fontColor: AppColor.blueTextPrimary,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () => controller.onTapSignUpWithGoogle(),
                            child: Image.asset(
                              "assets/icons/test_icons/google_icon.png",
                              height: 30,
                              width: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                            child: VerticalDivider(
                              color: AppColor.black,
                              width: 2,
                              thickness: 1,
                              endIndent: 2,
                              indent: 2,
                            ),
                          ),
                          InkWell(
                            onTap: () => controller.onTapSignUpWithFacebook(),
                            child: Image.asset(
                              "assets/icons/test_icons/facebook_icon.png",
                              height: 30,
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextWidget.simpleText(
                        data: "Sign up using other options",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonWidget.primaryButton(
                        text: TextWidget.simpleText(
                          data: "Sign up",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontColor: AppColor.whiteTextPrimary,
                        ),
                        onTap: () => controller.onTapSignUpButton(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonWidget.textButton(
                        text: TextWidget.simpleText(
                          data: "Log in",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontColor: AppColor.blackTextPrimary,
                        ),
                        onTap:() => controller.onTapLogInButton(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
