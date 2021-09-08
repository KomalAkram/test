import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/text_button_card.dart';
class FunScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           textButtonCard(
                    text: 'Confirm',
                    ontap: () {
                     
                    }),
                    SizedBox(height: 20.h,),
                     textButtonCard(
                    text: 'Games',
                    ontap: () {
                     
                    }),
        ],
      ),
    );
      
   
  }
}