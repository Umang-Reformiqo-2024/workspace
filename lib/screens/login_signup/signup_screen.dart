import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';
import 'package:workspace/controller/login_signup/signup_screen_controller.dart';

import '../../app_data/app_fonts/app_font.dart';
import '../../widgets/common_widgets/button_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignupScreenController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: AnimatedContainer(
            duration: const Duration(seconds: 1),
            transform: Matrix4.translationValues(0, controller.startNextPageAnimation ? -MediaQuery.of(context).size.height * 1 : 0, 0,),
            child: AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: controller.startNextPageAnimation?0:1,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          splashFactory: NoSplash.splashFactory,
                          onTap: () => Get.back(),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Create Account",
                        style: TextStyle(
                            fontFamily: AppFont.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Enter your credentials to create your account.",
                        style: TextStyle(
                            fontFamily: AppFont.primary,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextField(
                        controller: controller.firstNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: const Color(0xFFF6F6F6),
                            labelStyle: TextStyle(
                                color: const Color(0xFF838383).withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.primary),
                            labelText: "First Name",
                            prefixIcon: const Icon(Icons.person)),
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                            color: Colors.black, fontFamily: AppFont.primary),
                        cursorColor: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controller.lastNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: const Color(0xFFF6F6F6),
                            labelStyle: TextStyle(
                                color: const Color(0xFF838383).withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.primary),
                            labelText: "Last Name",
                            prefixIcon: const Icon(Icons.person)),
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                            color: Colors.black, fontFamily: AppFont.primary),
                        cursorColor: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: const Color(0xFFF6F6F6),
                            labelStyle: TextStyle(
                                color: const Color(0xFF838383).withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.primary),
                            labelText: "Email",
                            prefixIcon: const Icon(Icons.email)),
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                            color: Colors.black, fontFamily: AppFont.primary),
                        cursorColor: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controller.passwordController,
                        onChanged: (value) => controller.onPasswordValueChange(password : value),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xFFE8E8E8)),
                                borderRadius: BorderRadius.circular(10)),
                            filled: true,
                            fillColor: const Color(0xFFF6F6F6),
                            labelStyle: TextStyle(
                                color: const Color(0xFF838383).withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontFamily: AppFont.primary),
                            labelText: "Password",
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: InkWell(
                                onTap: () => controller.onTapPasswordEye(),
                                child: Icon(controller.isPasswordHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off))),
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                            color: Colors.black, fontFamily: AppFont.primary),
                        cursorColor: Colors.black,
                        obscureText: controller.isPasswordHidden,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(15, 10, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Password must contains,",style: TextStyle(fontSize: 12,fontFamily: AppFont.primary,color: AppColor.blackTextPrimary),),
                          SizedBox(height: 5,),
                          _buildPasswordCondition('At least 6 characters', controller.isPasswordValidLength),
                          _buildPasswordCondition('At least one uppercase letter', controller.hasPasswordOneUpperChar),
                          _buildPasswordCondition('At least one lowercase letter', controller.hasPasswordOneLowerChar),
                          _buildPasswordCondition('At least one number', controller.hasPasswordOneDigit),
                          _buildPasswordCondition('At least one special character', controller.hasPasswordOneSpecialChar),
                        ],
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Checkbox(
                                value: controller.isTermsOfServiceAccepted,
                                onChanged: (value) => controller
                                    .onSelectingTermsOfService(userResponse: value!),
                                activeColor: Colors.black),
                            const SizedBox(
                              width: 5,
                            ),
                            Flexible(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text("By selecting Agree and continue, I agree to ",style: TextStyle(fontFamily: AppFont.primary),),
                                InkWell(onTap: () => controller.onTapTermsOfServiceText(),child: const Text("Terms of Service",style: TextStyle(fontFamily: AppFont.primary,color: Color(0xFF61AFDC),decoration: TextDecoration.underline,decorationColor: Color(0xFF61AFDC)),))
                              ],
                            )),
                          ],
                        ),
                      ),

                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     GestureDetector(
                      //       onTap: () => controller.onTapGoogle(),
                      //       child: SizedBox(
                      //         height: 30,
                      //         width: 30,
                      //         child: Image.asset("assets/v2/png/google_icon.webp"),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       height: 30,
                      //       width: 50,
                      //       child: VerticalDivider(indent: 2,endIndent: 2,),
                      //     ),
                      //     GestureDetector(
                      //       onTap: () => controller.onTapFacebook(),
                      //       child: SizedBox(
                      //         height: 30,
                      //         width: 30,
                      //         child: Image.asset("assets/v2/png/facebook_icon.webp"),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(height: 10,),
                      // const Center(child: Text("Sign up using other options")),
                      AppButtonPrimary(
                          onTap: () => controller.onTapSignupButton(),
                          text: "Sign up"),
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
  Widget _buildPasswordCondition(String text, bool isValid) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          isValid ? Icons.check_circle : Icons.circle_outlined,
          color: isValid ? Colors.green : Colors.red,
          size: 12,
        ),
        const SizedBox(width: 5),
        Text(text,style: const TextStyle(fontSize: 10,fontFamily: AppFont.primary,color: AppColor.blackTextPrimary),),
      ],
    );
  }
}
