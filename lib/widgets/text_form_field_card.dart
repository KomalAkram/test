import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
textFormFieldCard({
  label,
  icon,
  value,
  controller,
  hintText,
  maxlines,
  bool borderColor =  false ,
 
}){
return 
TextFormField(
   
  maxLines: maxlines,
 enabled: value,
  controller: controller,
  style: TextStyle(color: Colors.black,fontSize: 16.sp),
  autofocus: false,
  decoration: InputDecoration(
     labelText: label,
     labelStyle: TextStyle(fontSize: 22.sp,color: Colors.grey),
    suffixIcon: Icon(icon,color: Colors.grey,),
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.grey,),
    filled: true,
     focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF009fff), width: 2.w),
            borderRadius: BorderRadius.circular(5.r),
          ),
    border: InputBorder.none,
    enabledBorder: OutlineInputBorder(
       borderSide: borderColor ? BorderSide(color: Colors.grey, width: 1.w): BorderSide(color: Colors.grey[200] ),
    borderRadius: BorderRadius.all(Radius.circular(5.r),),
    ),
  ),
);

}
