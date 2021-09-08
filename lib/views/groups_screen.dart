import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/groups_controller.dart';
import 'package:plural_app/views/groups_search_screen.dart';
import 'package:plural_app/views/manage_groups_screen.dart';
import 'package:plural_app/widgets/floating_action_button_card.dart';
import 'package:plural_app/widgets/profile_card.dart';

// ignore: must_be_immutable
class GroupsScreen extends StatelessWidget {
  GroupController groupController = Get.put(GroupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<GroupController>(builder: (controller) {
        return SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
              child: Wrap(runSpacing: 5.r, spacing: 10.r, children: [
                for (var data in controller.profiles)
                  profileCard(
                      image: data.image,
                      name: data.name,
                      members: data.members,
                      ),
                SizedBox(
                  width: 7.h,
                ),
              ])),
        );
      }),
      floatingActionButton: floatingActionButtonCard(
        icon: Icons.groups,
        ontap: (){Get.to(GroupsSeacrhScreen());}
      ),
    
    );
  }
}
