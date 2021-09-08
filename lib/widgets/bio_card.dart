import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bioCard({
  label,
  hintText,
  bool borderColor = true,
  controller,
}) {
  return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        // Text(
        //   label,
        //   style: TextStyle(fontSize: 14.sp, color: Colors.grey),
        // ),
        SizedBox(height: 05.h),
        Stack(children: [
          Positioned(
            // top: 0,
            child: Container(
              width: 378.w,
              height: 158.h,
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Color.fromRGBO(0, 0, 0, 0.15000000596046448),
                  //       offset: Offset(0, 6.r),
                  //       blurRadius: 4.r)
                  // ],
                  // color: Color(0xFF1B2130),
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                maxLines: 6,
                controller: controller,
                enabled: true,
                style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                autofocus: false,
                decoration: InputDecoration(
                   focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF009fff), width: 2.w),
            borderRadius: BorderRadius.circular(5.r),
          ),
           enabledBorder: OutlineInputBorder(
       borderSide: borderColor ? BorderSide(color: Colors.grey, width: 1.w): BorderSide(color: Colors.grey[200] ),
    borderRadius: BorderRadius.all(Radius.circular(5.r),),
    ),
                  hintText: hintText,
                  hintStyle:
                      TextStyle(fontSize: 22.sp, color: Color(0xFF8D9097)),
                  filled: true,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          // Positioned(
          //     left: 340.w,
          //     bottom: 10.h,
          //     child: Text(
          //       '200',
          //       style: TextStyle(fontSize: 14, color: Color(0xFF8D9097)),
          //     )),
        ])
      ]));
}
