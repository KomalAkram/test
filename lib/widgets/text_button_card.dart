import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
textButtonCard(
  {
text,
ontap,
  }
){
  return InkWell(
    onTap: ontap,
    child: Container(
                        width: 400.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                           color: Color(0xFF009fff),
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        child: Center(
                            child: Text(
                          text,
                          style: TextStyle(fontSize: 20.sp, color: Colors.white,fontWeight: FontWeight.bold),
                        )),
                      ),
  );
}