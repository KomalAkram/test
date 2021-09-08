import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/discover_screen_controller.dart';
import 'package:plural_app/views/create_group_screen.dart';
import 'package:plural_app/widgets/drop_down_menu_card.dart';
import 'package:plural_app/widgets/floating_action_button_card.dart';
import 'package:plural_app/widgets/map_card.dart';
import 'package:plural_app/widgets/profile_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/search_card.dart';

// ignore: must_be_immutable
class DiscoverScreen extends StatelessWidget {
  DiscoverScreenController discoverScreenController =
      Get.put(DiscoverScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<DiscoverScreenController>(builder: (controller) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Positioned(child: mapCard()),
                Positioned(
                  left: 20.w,
                  bottom: 160.h,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropDownMenuCard(),
                        SizedBox(
                          width: 03.w,
                        ),
                        searchCard(
                          hintText: 'Search',
                          controller: discoverScreenController.searchController,
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
                  child: Wrap(runSpacing: 5.r, spacing: 10.r, children: [
                    for (var data in controller.profiles)
                      profileCard(
                          image: data.image,
                          name: data.name,
                          members: data.members,
                          text: data.buttonText,
                          showButton: true,
                          // selected: true,
                          ontap: () {}),
                    SizedBox(
                      width: 7.h,
                    ),
                  ])),
            ],
          ),
        );
      }),
      floatingActionButton:
          floatingActionButtonCard(icon: Icons.add, ontap: () {Get.to(CreateGroupScreen());}),
    );
  }
}
