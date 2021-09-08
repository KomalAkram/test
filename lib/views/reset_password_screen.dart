import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/reset_password_screen_controller.dart';
import 'package:plural_app/views/main_screen.dart';
import 'package:plural_app/widgets/description_card.dart';
import 'package:plural_app/widgets/heading_card.dart';
import 'package:plural_app/widgets/text_button_card.dart';
import 'package:plural_app/widgets/text_form_field_card.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreenController resetPasswordScreenController =Get.put(ResetPasswordScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
        padding: EdgeInsets.fromLTRB(30.w, 150.h, 30.w, 0.h),
          child: Column(
            children: [
              headingCard(text: 'Reset Password'),
              SizedBox(
                height: 30.h,
              ),
              descriptionCard(
                text:
                    'Lorem ipsum is simply dummy text of the printing and typesetting industry',
              ),
              SizedBox(height: 40.h,),
                  textFormFieldCard(
                    label: 'Password',
                    icon: Icons.visibility_outlined,
                    hintText: 'Password',
                    value: true,
                  controller: resetPasswordScreenController.passwordController,
                  ),
                  SizedBox(height: 30.h),
                   textFormFieldCard(
                    label: 'Password',
                    icon: Icons.visibility_outlined,
                    hintText: 'Re-type Password',
                    value: true,
                  controller: resetPasswordScreenController.resetpasswordController,
                  ),
                  SizedBox(
                height: 50.h,
              ),
                  textButtonCard(
                    text: 'Create Password',
                    ontap: (){Get.to(MainScreen());}
                  )
            ],
          ),
        ),
      ),
    );
  }
}
