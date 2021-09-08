import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plural_app/views/admin_profile_screen.dart';
import 'package:plural_app/views/groups_screen.dart';
import 'package:plural_app/views/login_screen.dart';
import 'package:plural_app/views/main_screen.dart';
import 'package:plural_app/views/members_popup_screen.dart';
import 'package:plural_app/views/members_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   /* -------------------------------------------------------------------------- */
   /*                This widget is the root of your application.                */
   /* -------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: Size(414, 896),
      builder: () =>
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proloco',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
        ),
        home: AdminProfileScreen()
        // MembersPopupScreen()
        // MembersScreen(),
        // LoginScreen()
        //  MainScreen()
        // HomeScreen(),
    )
   );
  }
}

