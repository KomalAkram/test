import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/drop_down_menu_card.dart';
import 'package:plural_app/widgets/pop_up_menu_item_card.dart';

profileCard({
  image,
  name,
  members,
  text,
  ontap,
  String date,
  bool selected = false,
  bool showButton = false,
  bool icon =false,
  bool more =false,
  bool showDate = false,

}) {
  return Container(
    height: 140.h,
    width: 190.w,
    child: Card(
        elevation: 10.r,
        child: Stack(
          children: [
          Positioned(
            right: 5.w,
            top: 18.h,
            child: showButton
                ?
                icon ?
                Icon(Icons.delete_outline,color: Colors.grey,)
                :
                InkWell(
                  onTap: ontap,
                  child: 
                  Container(
                      height: 18.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF009fff)),
                        color: selected ? Colors.white : Color(0xFF009fff),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(
                        text,
                        style: TextStyle(
                            color: selected ? Color(0xFF009fff) : Colors.white,
                            fontSize: 14.sp),
                        textAlign: TextAlign.center,
                      ),
                    ),
                )
                :
                more ? 
                 popUpMenuItemCard(
                text: 'Remove',
                ontap: () {},
                textt: 'Make Admin',
                ontapp: () {},
              )
                :
                 Container(),
          ),
          Positioned(
            left: 45.w,
            top: 22.h,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    name,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    members,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w900,
                        color: Colors.blue),
                  ),
                showDate ?  Text(
                    date,
                    style: TextStyle(color: Colors.grey,fontSize: 10.sp),
                  )
                  : Container()
                ],
              ),
            ),
          ),
        ])),
  );
}
