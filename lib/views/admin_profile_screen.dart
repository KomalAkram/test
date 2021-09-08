import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plural_app/widgets/pop_up_menu_item_card.dart';
import 'package:plural_app/widgets/profile_detail_card.dart';

class AdminProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Members'),
          centerTitle: true,
          actions: [
            popUpMenuItemCard(
                text: 'Edit',
                ontap: () {},
                textt: 'Delete',
                ontapp: () {},
                texttt: 'Invite',
                ontappp: () {})
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15.r),
            ),
          ),
        ),
        body: Column(
          children: [
            profileDetailCard(
                numbers: '150',
                text: 'Moments',
                numberss: '150',
                textt: 'Members',
                name: 'The Rolling Phones',
                image: 'https://picsum.photos/id/0/367/267'),
                
          ],
        ));
  }
}
