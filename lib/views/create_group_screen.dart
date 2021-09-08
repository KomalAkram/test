import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/create_group_screen_controller.dart';
import 'package:plural_app/widgets/app_bar_card.dart';
import 'package:plural_app/widgets/bio_card.dart';
import 'package:plural_app/widgets/profile_picture.dart';
import 'package:plural_app/widgets/text_button_card.dart';
import 'package:plural_app/widgets/text_form_field_card.dart';

class CreateGroupScreen extends StatelessWidget {
  CreateGroupScreenController createGroupScreenController = Get.put(CreateGroupScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarCard(text: 'Create a Group'),
        body: SingleChildScrollView(
         
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.w, 0.h, 30.w, 0.h),
            child: Column(
              children: [
                  SizedBox(height: 30.h,),
                  profilePicture(
                      profile: 'assets/bg.jpg',
                      addIcon: Icons.add,
                      text: 'Upload Image',
                      ontap: (){print('pressed');}),
                      SizedBox(height: 30.h,),
                      textFormFieldCard(
                        label: 'Group Name',
                        icon: Icons.groups,
                        hintText: 'Sarah Banks',
                        borderColor: true,
                      ),
                        SizedBox(height: 30.h,),
                      textFormFieldCard(
                        label: 'Location',
                        icon: Icons.location_on_outlined,
                        hintText: 'Location',
                        borderColor: true,
                      ),
                        SizedBox(height: 30.h,),
                         textFormFieldCard(
                        label: 'Interests',
                        icon: Icons.arrow_drop_down,
                        hintText: 'Interests',
                        borderColor: true,
                      ),
                        SizedBox(height: 30.h,),
                      //   textFormFieldCard(
                      //   label: 'Enter Bio',
                      //   hintText: 'Enter Bio',
                      //   borderColor: true,
                      //   maxlines: 5,
                      // ),
                        // SizedBox(height: 30.h,),
                        bioCard(label: 'Bio',
               hintText: 'Enter Bio',
                controller: createGroupScreenController.bioController,),
                     SizedBox(height: 30.h,),
                      textButtonCard(
                      text: 'Confirm',
                      ontap: () {}
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
