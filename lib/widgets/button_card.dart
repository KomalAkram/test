import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
buttonCard(
  {
    ontap,
    text,
    height,
    width,
  }
){
  return  InkWell(
                  onTap: ontap,
                  child: Container(
                      height: height,
                      // 30.h,
                      width: width,
                      // 80.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF009fff)),
                        color: Color(0xFF009fff),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                );
}