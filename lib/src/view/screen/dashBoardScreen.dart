import 'package:angkor/src/controller/bottomNavController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appIcons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DashBoard extends StatelessWidget {



   DashBoard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController =
        Get.put(BottomNavController());
    return Obx(() {
      return Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.mainBlackColor,
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: IndexedStack(
            index: bottomNavController.cIndex.value,
            children: bottomNavController.pages,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavController.cIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.mainBlackColor,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.homeIcon,
                  color: AppColors.pureWhite,
                ),
                activeIcon: SvgPicture.asset(
                  AppAssets.homeIcon,
                  color: AppColors.mainColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppAssets.orderIcon),
                activeIcon: SvgPicture.asset(
                  AppAssets.orderIcon,
                  color: AppColors.mainColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppAssets.favouriteIcon),
                activeIcon: SvgPicture.asset(
                  AppAssets.favouriteIcon,
                  color: AppColors.mainColor,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppAssets.profileIcon),
                activeIcon: SvgPicture.asset(
                  AppAssets.profileIcon,
                  color: AppColors.mainColor,
                ),
                label: '')
          ],
          onTap: (index) {
            bottomNavController.incrementTab(index);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.mainColor,
          onPressed: () {
            bottomNavController.incrementTab(1);
          },
          // tooltip: 'Increment',
          child: Icon(
            AppIcons.addIcon,
            color: AppColors.pureWhite,
          ),
        ),
      );
    });
  }
}
