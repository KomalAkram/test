import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/text_form_field_card.dart';
searchCard({
  hintText,
  controller, 
}
){
  return  Container(
                          height: 70.h,
                          width: 240.h,
                          child: Card(
                            elevation: 6.r,
                            child: textFormFieldCard(
                              hintText: hintText,
                              icon: Icons.search_outlined,
                              controller: controller,
                            ),
                          )
                          );
}