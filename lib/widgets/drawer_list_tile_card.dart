import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

drawerListTileCard({
  title,
  ontap,
}) {
  return ListTile(
      onTap: ontap,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 18.sp,
        ),
      ));
}
