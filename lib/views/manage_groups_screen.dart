import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/manage_groups_controller.dart';
import 'package:plural_app/views/groups_screen.dart';
import 'package:plural_app/views/groups_search_screen.dart';
import 'package:plural_app/views/main_screen.dart';
import 'package:plural_app/widgets/app_bar_card.dart';
import 'package:plural_app/widgets/profile_card.dart';

class ManageGroupsScreen extends StatelessWidget {
  ManageGroupsController manageGroupsController =
      Get.put(ManageGroupsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarCard(
            text: 'Manage Groups',
            ontap: () {
             Get.to(MainScreen());
            }),
        body: GetBuilder<ManageGroupsController>(builder: (controller) {
          return SingleChildScrollView(
            child: Container(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
              child: Wrap(
                children: [
                  for (var data in controller.profiles)
                    profileCard(
                      image: data.image,
                      name: data.name,
                      members: data.members,
                      date: data.date,
                      ontap: () {},
                      icon: true,
                      showButton: true,
                      showDate: true,
                      // more: true
                    ),
                ],
              ),
            )),
          );
        }),
      ),
    );
  }
}
