import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

socialIconCard({
  fb,
  google,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
       height: 40.r,
       width: 40.r,
        child: CircleAvatar(backgroundImage: AssetImage(fb),)
     
        ),
        SizedBox(width: 5.w,),
      Container(
        height: 35.r,
        width: 35.r,
         child: CircleAvatar(backgroundImage: AssetImage(google),))
    ],
  );
}
