import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

customAppbar(
  {
    leading,
    ontap,
    trailing,
    ontapp,
    text,
  }
) {
  return Container(
    height: 80.h,
    decoration: BoxDecoration(
        color: Color(0xFF009fff),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r))),
    child: Padding(
      padding:EdgeInsets.fromLTRB(15.w, 0.h, 15.w, 0.h),
      child: TextField(
        decoration: InputDecoration(
           enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            prefixIcon: IconButton(
              onPressed: ontap,
              icon: Icon(leading,color: Colors.white,),
            ),
            suffixIcon: IconButton(
              onPressed: ontapp,
              icon: Icon(trailing,color: Colors.white),
            ),
            hintText: text,
            hintStyle: TextStyle(color: Colors.white)),
      ),
    ),
  );
}
