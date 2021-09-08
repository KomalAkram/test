import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/drawer_header_card.dart';
import 'package:plural_app/widgets/drawer_list_tile_card.dart';
import 'package:plural_app/widgets/drawer_logout_card.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        drawerHeaderCard(
            image: "https://picsum.photos/id/0/367/267", name: 'Sandra Cruz'),
        drawerListTileCard(title: 'Events', ontap: () {}),
        drawerListTileCard(title: 'Subscriptions', ontap: () {}),
        drawerListTileCard(title: 'Store', ontap: () {}),
        drawerListTileCard(title: 'Settings', ontap: () {}),
        drawerListTileCard(title: 'Themes', ontap: () {}),
        SizedBox(height: 340.h,),
        drawerLogoutCard(
          text: 'Logout'
        )
      ],
    );
  }
}
