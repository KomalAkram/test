import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/members_screen_controller.dart';
import 'package:plural_app/widgets/profile_card.dart';

class MembersScreen extends StatelessWidget {
  MembersScreenController membersScreenController = Get.put(MembersScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
            title: Text('Members'),
            centerTitle: true,
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15.r),
              ),
            ),
          ),
          body: GetBuilder<MembersScreenController>(
          builder: (controller) {
              return SingleChildScrollView(
               child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
                  child: Wrap(
                   runSpacing: 5.r, 
                    spacing: 10.r,
                    children: [
                       for (var data in controller.profiles)
                      profileCard(
                    image: data.image,
                    name: data.name,
                    members: data.members,
                    text: data.buttonText,
                    showButton: true,
                  )
                    ],
                  ),
                ),
              );
            }
          )
          // GetBuilder<MembersScreenController>(builder: (controller) {
          //   return SingleChildScrollView(
          //     child: Container(
          //         padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
          //         child: Wrap(runSpacing: 5.r, spacing: 10.r, children: [
          //           for (var data in controller.profiles)
          //             profileCard(
          //                 image: data.image,
          //                 name: data.name,
          //                 members: data.members,
          //                 text: data.buttonText,
          //                 showButton: true,
          //                 // selected: true,
          //                 ontap: () {}),
          //           SizedBox(
          //             width: 7.h,
          //           ),
          //         ])
          //         ),
          //   );
          // }),
          ),
    );
  }
}
