import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/views/reset_password_screen.dart';
import 'package:plural_app/widgets/description_card.dart';
import 'package:plural_app/widgets/heading_card.dart';
import 'package:plural_app/widgets/text_button_card.dart';

class ConfirmEmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(40.w, 100.h, 40.w, 0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250.h,
                width: 300.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/confirm.PNG'),
                        fit: BoxFit.fill)),
                // child:
                // Image.asset('assets/confirm.PNG')
              ),
              SizedBox(
                height: 30.h,
              ),
              headingCard(text: 'Check Your Email'),
              SizedBox(
                height: 30.h,
              ),
              descriptionCard(
                text:
                    'Lorem ipsum is simply dummy text of the printing and typesetting industry',
                    textalign: TextAlign.center
              ),
              SizedBox(height: 100.h),
              textButtonCard(
                  text: 'Confirm',
                  ontap: () {
                    Get.to(ResetPasswordScreen());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
