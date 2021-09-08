import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
headingCard(
  {
    text,
  }
){
  return Container(
    child: Text(text,style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),)
  );
}