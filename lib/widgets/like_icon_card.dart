import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

likeIconCard({
  icon,
  text,
  ontap,
  bool select = false,
}) {
  return Container(
    padding: EdgeInsets.all(3.r),
    // height: 5.h,
    // width: 1.w,

    decoration: BoxDecoration(
        color: select ? Colors.grey[200] : Colors.white,
        borderRadius: BorderRadius.circular(10.r)),
    child: Row(
      children: [
        InkWell(
            onTap: ontap,
            child: Icon(
              icon,
              color: select? Colors.blue : Colors.grey,
              size: 18.r,
            )),
        Text(
          text,
          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
        )
      ],
    ),
  );
}
