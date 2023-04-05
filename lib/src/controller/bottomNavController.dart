import 'package:angkor/src/view/screen/bottomNav/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/screen/bottomNav/categoryScreen.dart';
import '../view/screen/bottomNav/favouriteScreen.dart';
import '../view/screen/bottomNav/homeScreen.dart';


class BottomNavController extends GetxController{

  final RxList<Widget> pages = [
     HomeScreen(),
    const CategoryScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ].obs;

  RxInt cIndex = 0.obs;
  RxInt drawerIndex = 0.obs;

  void incrementTab(index) {
    // setState(() {
      cIndex.value = index;
    // });
  }

}