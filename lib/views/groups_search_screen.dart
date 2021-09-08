import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/controllers/groups_search_controller.dart';
import 'package:plural_app/views/manage_groups_screen.dart';
import 'package:plural_app/widgets/custom_appbar.dart';
import 'package:plural_app/widgets/profile_card.dart';

// ignore: must_be_immutable
class GroupsSeacrhScreen extends StatelessWidget {
  GroupsSearchController groupsSearchController =
      Get.put(GroupsSearchController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<GroupsSearchController>(builder: (controller) {
          return SingleChildScrollView(
            child: Column(children: [
              customAppbar(
                  leading: Icons.arrow_back,
                  ontap: (){Get.to(ManageGroupsScreen());},
                  trailing: Icons.search_outlined,
                  ontapp: (){},
                  text: 'Search'),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
                  child: Wrap(runSpacing: 5.r, spacing: 10.r, children: [
                    for (var data in controller.profiles)
                      profileCard(
                          image: data.image,
                          name: data.name,
                          members: data.members,
                          ontap: () {},
                          // icon: true,
                          // showButton: true,
                          more: true),
                    SizedBox(
                      width: 7.h,
                    ),
                  ])),
            ]),
          );
        }),
      ),
    );
  }
}
