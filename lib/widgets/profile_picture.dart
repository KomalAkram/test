import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/raw_material_button.dart';

profilePicture({
  profile,
  addIcon,
  text,
  ontap,
}) {
  return Column(children: [
    SizedBox(
      height: 90.h,
      width: 90.w,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10.r, color: Colors.grey, spreadRadius: 2.r)
              ],
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(profile),
            ),
          ),
          Positioned(
              bottom: 25,
              right: -18,
              child: rawMaterialButtonCard(
                ontap: (){},
                 addIcon: Icons.add,
                 fillColor: Color(0xFF009fff),
                 color: Colors.white)),
        ],
      ),
    ),
    Text(
      text,
      style: TextStyle(color: Colors.grey[600]),
    )
  ]);
}
