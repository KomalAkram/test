import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/login_screen_controller.dart';
import 'package:plural_app/views/forgot_password_screen.dart';
import 'package:plural_app/views/register_screen.dart';
import 'package:plural_app/widgets/heading_card.dart';
import 'package:plural_app/widgets/social_icon_card.dart';
import 'package:plural_app/widgets/text_button_card.dart';
import 'package:plural_app/widgets/text_card.dart';
import 'package:plural_app/widgets/text_form_field_card.dart';

class LoginScreen extends StatelessWidget {
  LoginScreenController loginScreenController =
      Get.put(LoginScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              padding: EdgeInsets.fromLTRB(30.w, 80.h, 30.w, 30.h),
              child: Column(
                children: [
                  Image.asset(
                    'assets/logoo.PNG',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  headingCard(text: 'Login your account'),
                  SizedBox(
                    height: 20.h,
                  ),
                  textCard(
                      text: "Don't have an account?",
                      subtext: 'Sign Up',
                      show: true,
                      ontap: () {}),
                  SizedBox(
                    height: 40.h,
                  ),
                  textFormFieldCard(
                    label: 'Email',
                    icon: Icons.email_outlined,
                    hintText: 'demo@gmail.com',
                    value: true,
                    controller: loginScreenController.emailController,
                  ),
                  SizedBox(height: 30.h),
                  textFormFieldCard(
                    label: 'Password',
                    icon: Icons.visibility_outlined,
                    hintText: 'Password',
                    value: true,
                    controller: loginScreenController.passwordController,
                  ),
                  SizedBox(height: 30.h),
                  textButtonCard(
                      text: 'Login',
                      ontap: () {
                        Get.to(RegisterScreen());
                      }),
                  SizedBox(height: 30.h),
                  textCard(
                      text: '',
                      subtext: 'Forgot Password?',
                      show: false,
                      ontap: () {
                        Get.to(ForgotPasswordScreen());
                      }),
                  SizedBox(
                    height: 150.h,
                  ),
                  socialIconCard(
                    fb: 'assets/fb.png',
                    google: 'assets/google.png',
                  )
                ],
              ),
            )));
  }
}
