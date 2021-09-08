import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/login_screen_controller.dart';
import 'package:plural_app/controllers/register_screen_controller.dart';
import 'package:plural_app/views/confirm_account_screen.dart';
import 'package:plural_app/views/login_screen.dart';
import 'package:plural_app/widgets/gender_card.dart';
import 'package:plural_app/widgets/heading_card.dart';
import 'package:plural_app/widgets/social_icon_card.dart';
import 'package:plural_app/widgets/text_button_card.dart';
import 'package:plural_app/widgets/text_card.dart';
import 'package:plural_app/widgets/text_form_field_card.dart';

class RegisterScreen extends StatelessWidget {
  LoginScreenController loginScreenController =
      Get.put(LoginScreenController());
  RegisterScreenController registerScreenController =
      Get.put(RegisterScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(30.r),
            child: Column(
              
              children: [
                 SizedBox(
                  height: 40.h,
                ),
                headingCard(text: 'Register to demo app'),
                SizedBox(
                  height: 20.h,
                ),
                textCard(
                    text: 'Already Have An Account?',
                    subtext: 'Login',
                    show: true,
                    ontap: () {
                      Get.to(LoginScreen());
                    }),
                SizedBox(
                  height: 40.h,
                ),
                textFormFieldCard(
                  label: 'Name',
                  icon: Icons.person_outline,
                  hintText: 'Jone',
                  value: true,
                  controller: registerScreenController.nameController,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    genderCard(
                      selectGender: true,
                      icon: Icons.male_outlined,
                      gender: 'Male',
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    genderCard(
                      selectGender: false,
                      icon: Icons.female_outlined,
                      gender: 'Female',
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    genderCard(
                      selectGender: false,
                      icon: Icons.transgender_outlined,
                      gender: 'Others',
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
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
                SizedBox(height: 40.h),
                textButtonCard(text: 'Register', ontap: () {Get.to(ConfirmAccountScreen());}),
                SizedBox(
                  height: 100.h,
                ),
                textCard(
                  text: 'Or Sign Up With',
                  subtext: '',
                  show: true,
                ),
                SizedBox(
                  height: 10.h,
                ),
                socialIconCard(
                  fb: 'assets/fb.png',
                  google: 'assets/google.png',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
