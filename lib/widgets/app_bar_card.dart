import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
appBarCard({
  text,
  ontap,
}){
  return AppBar(
          elevation: 10.r,
          backgroundColor: Color(0xFF009fff),
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20.sp),
          ),
          leading: InkWell(child: Icon(Icons.arrow_back,),onTap: ontap,),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15.r),
            ),
          ),
        );
}
