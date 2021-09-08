import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/controllers/main_screen_controller.dart';
import 'package:plural_app/views/discover_screen.dart';
import 'package:plural_app/views/drawer_screen.dart';
import 'package:plural_app/views/fun_screen.dart';
import 'package:plural_app/views/groups_screen.dart';
import 'package:plural_app/views/moments_screen.dart';
import 'package:plural_app/widgets/floating_action_button_card.dart';

class MainScreen extends StatelessWidget {
  MainScreenController mainScreenController = Get.put(MainScreenController());
  @override
  Widget build(BuildContext context) {
    List pages = [
      GroupsScreen(),
      DiscoverScreen(),
      MomentsScreen(),
      FunScreen(),
    ];
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          elevation: 10.r,
          backgroundColor: Color(0xFF009fff),
          title: Image.asset( 
            'assets/logo.PNG',
          ),
          centerTitle: true,
          actions: [
            InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/chats.PNG',
                )),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15.r),
            ),
          ),
        ),
        drawer: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40.r)),
          child: Container(
            width: 250.w,
            child: Drawer(
                child: Container(
              child: ListView(
                children: [DrawerScreen()],
              ),
            )),
          ),
        ),
        body: pages[MainScreenController.to.currentIndex.value],
        //body: BottomNavigationPageController.to.currentPage,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: MainScreenController.to.currentIndex.value,
          onTap: MainScreenController.to.changePage,
          selectedItemColor: Color(0xFF009fff),
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Image.asset(
                  'assets/groups.PNG',
                ),
                label: 'GROUPS'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/discover.PNG'), label: ("DISCOVER")),
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Image.asset('assets/moments.PNG'),
                label: 'MOMENTS'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/fun.PNG'), label: ("FUN")),
          ],
        ),
        
      ),
    );
  }
}
