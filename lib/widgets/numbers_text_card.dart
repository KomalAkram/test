import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
numbersTextCard(
  {
    numbers,
    text,
  }
){
  return Column(
                children: [
                  Text(numbers,style: TextStyle(color: Color(0xFF009fff),fontWeight: FontWeight.bold),),
                  Text(text,style: TextStyle(color: Colors.grey),)
                ],
              );
}