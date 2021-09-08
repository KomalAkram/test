import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

textCard({
  text,
  subtext,
  ontap,
  bool show = true,
  
}) {
  return show
      ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              maxLines: 3,
              style: TextStyle(fontSize: 18.sp, color: Colors.grey[600],),
            ),
            InkWell(
              onTap: ontap,
                child: Text(
              subtext,
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Color(0xFF009fff),
                  fontWeight: FontWeight.w900),
            ))
          ],
        )
      : InkWell(
        onTap: ontap,
        child: Text(
            subtext,
            style: TextStyle(
                fontSize: 18.sp,
                color: Color(0xFF009fff),
                fontWeight: FontWeight.w900),
          ),
      );
}
