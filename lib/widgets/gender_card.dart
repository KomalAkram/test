import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

genderCard({
  gender,
  icon,
  ontap,
  bool selectGender = false,
}) {
  return InkWell(
    onTap: ontap,
    child: Container(
      height: 65.h,
      width: 90.w,
      decoration: BoxDecoration(
          color: selectGender ? Color(0xFF009fff) : Colors.white,
          border: selectGender
              ? Border.all(color: Colors.transparent)
              : Border.all(color: Colors.grey)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
            child: Icon(
              
              icon,
              color: Colors.grey,
            ),
          ),
          Text(
            gender,
            style: TextStyle(color: Colors.grey),
          ),
          
        ],
      ),
    ),
  );
}
