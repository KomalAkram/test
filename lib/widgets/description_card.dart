import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

descriptionCard({
  text,
  textalign,
}) {
  return Container(
    child: Text(
      text,
      style: TextStyle(color: Colors.grey),
      textAlign: textalign,
    ),
  );
}
