import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

drawerHeaderCard({
  image,
  name,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 18.h),
    padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 15.w),
    // color: Colors.white,
    child: Row(
      children: [
        Container(
          child: CircleAvatar(
            radius: 30.r,
            backgroundImage: NetworkImage(image,
              
              ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.grey[600],
          ),
        )
      ],
    ),
  );
}
