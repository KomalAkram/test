import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/moments_screen_controller.dart';
import 'package:plural_app/widgets/create_post_card.dart';
import 'package:plural_app/widgets/post_card.dart';

// ignore: must_be_immutable
class MomentsScreen extends StatelessWidget {
  MomentsScreenController momentsScreenController = Get.put(MomentsScreenController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MomentsScreenController>(
      init: momentsScreenController,
      builder: (controller) {
        return SingleChildScrollView(
         
          child: Container(
              padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
              child: Column(
                children: [
                createPostCard(
                  hintText: 'Write your message here...', 
                  maxlines: 3),
                for (var data in controller.posts) 
                postCard(
                  postImage: data.postImage,
                  postText: data.postText,
                  profileImage: data.profileImage,
                  profileText: data.profileName,
                  time: data.time
                ),
            
              ]
              )
              ),
        );
      }
    );
  }
}
