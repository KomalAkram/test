import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/login_screen_controller.dart';
import 'package:plural_app/views/confirm_email_screen.dart';
import 'package:plural_app/views/login_screen.dart';
import 'package:plural_app/widgets/description_card.dart';
import 'package:plural_app/widgets/heading_card.dart';
import 'package:plural_app/widgets/text_button_card.dart';
import 'package:plural_app/widgets/text_card.dart';
import 'package:plural_app/widgets/text_form_field_card.dart';

class ForgotPasswordScreen extends StatelessWidget {
   LoginScreenController loginScreenController = Get.put(LoginScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30.w, 180.h, 30.w, 0.h),
          child: Column(
            children: [
              headingCard(
                text: 'Forgot Password',
              ),
               SizedBox(
                height: 30.h,
              ),
              descriptionCard(
                text:
                    'Lorem ipsum is simply dummy text of the printing and typesetting industry.',
                    textalign: TextAlign.center
              ),
              SizedBox(height: 30.h),
               textFormFieldCard(
                    label: 'Email',
                    icon: Icons.email_outlined,
                    hintText: 'demo@gmail.com',
                    value: true,
                  controller: loginScreenController.emailController,
                  ),
                  SizedBox(height: 30.h),
                  textButtonCard(
                    text: 'Confirm',
                    ontap: (){
                      Get.to(ConfirmEmailScreen());
                    }
                  ),
                  SizedBox(height: 30.h),
                  textCard(
                    subtext: 'Return to login',
                    ontap: (){Get.to(LoginScreen());},
                    show: false,
                  )
            ],
          ),
        ),
      ),
    );
  }
}
