import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plural_app/views/discover_screen.dart';
import 'package:plural_app/views/fun_screen.dart';
import 'package:plural_app/views/groups_screen.dart';
import 'package:plural_app/views/moments_screen.dart';
class MainScreenController extends GetxController{
   static MainScreenController get to => Get.find();

  final currentIndex = 0.obs;

  List pages = [
      
     GroupsScreen(),
     DiscoverScreen(),
     MomentsScreen(),
     FunScreen(),
    
  ];

   get currentPage => pages[currentIndex.value];

  void changePage(int _index) {
    currentIndex.value = _index;
  }
}
