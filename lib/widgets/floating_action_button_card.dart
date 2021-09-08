import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
floatingActionButtonCard({
  icon,
  ontap,
}){
  return FloatingActionButton(
        backgroundColor: Color(0xFF009fff),
        child: Icon(icon),
        onPressed: ontap,
      );
}