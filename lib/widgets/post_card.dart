import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/description_card.dart';
import 'package:plural_app/widgets/like_icon_card.dart';
import 'package:plural_app/widgets/pop_up_menu_item_card.dart';

postCard({
  profileImage,
  time,
  profileText,
  postText,
  postImage,
}) {
  return Card(
    elevation: 10.r,
    child: Container(
      margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 20.h),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundImage: NetworkImage(profileImage),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  profileText,
                  style: TextStyle(fontSize: 16.sp),
                ),
                Text(
                  time,
                  style: TextStyle(
                      color: Color(0xFF009fff),
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp),
                )
              ]),
              SizedBox(
                width: 87.w,
              ),
              popUpMenuItemCard(
                text: 'Mute',
                ontap: () {},
                textt: 'Report',
                ontapp: () {},
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          postImage != null
              ? Container(
                  height: 120.h,
                  width: 332.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(postImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              : Container(),
          SizedBox(height: 10.h),
          postText != null
              ? descriptionCard(
                  text: postText,
                )
              : Container(),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              likeIconCard(
                  icon: Icons.favorite_border_outlined,
                  text: '125 Likes',
                  ontap: () {}),
              likeIconCard(
                  icon: Icons.comment, text: '125 Comments', ontap: () {}),
              likeIconCard(icon: Icons.share, text: '500 Share', ontap: () {})
            ],
          )
        ],
      ),
    ),
  );
}
