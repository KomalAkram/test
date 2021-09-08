import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

rawMaterialButtonCard({
  ontap,
  addIcon,
  color,
  fillColor,
}) {
  return RawMaterialButton(
    constraints: BoxConstraints.tight(Size(30.r, 30.r)),
    onPressed: ontap,
    elevation: 2.0,
    fillColor: fillColor,
    child: Icon(
      addIcon,
      color: color,
      size: 20.r,
    ),
    shape: CircleBorder(),
  );
}
