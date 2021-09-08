import 'package:flutter/material.dart';
import 'package:plural_app/widgets/button_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/pop_up_menu_item_card.dart';
import 'package:plural_app/widgets/raw_material_button.dart';
import 'package:plural_app/widgets/text_form_field_card.dart';

createPostCard({
  hintText,
  maxlines,
}) {
  return Card(
    elevation: 10.r,
    child: Container(
        padding: EdgeInsets.fromLTRB(20.w, 15.h, 20.w, 0),
        child: Column(
          children: [
            textFormFieldCard(
                hintText: hintText, maxlines: maxlines, borderColor: true),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    rawMaterialButtonCard(
                      ontap: () {},
                      addIcon: Icons.camera_indoor_outlined,
                      color: Colors.white,
                      fillColor: Color(0xFF009fff),
                    ),
                    rawMaterialButtonCard(
                        ontap: () {},
                        addIcon: Icons.image,
                        color: Colors.white,
                        fillColor: Color(0xFF009fff)),
                  ],
                ),
                SizedBox(width: 59.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    rawMaterialButtonCard(
                      ontap: () {},
                      addIcon: Icons.public,
                    ),
                    buttonCard(
                      height: 35.h,
                      width: 100.w,
                      text: 'Post',
                    )
                  ],
                ),
           
              ],
            
            )
          ],
        )),
  );
}
