import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
drawerLogoutCard({
text,
}){
return InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.only(left: 20.sp),
            height: 50.h,
            width: 220.w,
            decoration: BoxDecoration(
              color: Color(0xFF009fff),
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Center(
                child: Text(
              text,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.sp),
              textAlign: TextAlign.center,
            )),
          ),
        );
}