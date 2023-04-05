import 'package:angkor/src/controller/bottomNavController.dart';
import 'package:angkor/src/core/routes/routeNames.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/view/component/drawerListTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AngkorDrawer extends StatelessWidget {
  const AngkorDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController =
    Get.put(BottomNavController());
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.mainBlackColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(
              20,
            ),
          ),
        ),
        height: 60.h,
        width: 58.w,
        child: Drawer(
          backgroundColor: AppColors.mainGreyColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Image.asset(
                  AppAssets.angkorSplashIcon,
                  scale: 9,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                height: 32.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        bottomNavController.drawerIndex.value=0;
                        Navigator.pop(context);
                      },
                      child: const DrawerListTile(
                        title: 'Profile',
                        svgPath: AppAssets.profileIcon,
                        index: 0,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        bottomNavController.drawerIndex.value=1;
                        Navigator.pop(context);
                      },
                      child: const DrawerListTile(
                        title: 'Orders',
                        svgPath: AppAssets.orderIcon,
                        index: 1,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        bottomNavController.drawerIndex.value=2;
                        Navigator.pop(context);
                        Get.toNamed(RouteNames.manageUsers);

                      },
                      child: const DrawerListTile(
                        title: 'Manage Users',
                        svgPath: AppAssets.manageUserIcon,
                        index: 2,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        bottomNavController.drawerIndex.value=3;
                        Navigator.pop(context);
                      },
                      child: const DrawerListTile(
                        title: 'Generate Report',
                        svgPath: AppAssets.genReportIcon,
                        index: 3,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        bottomNavController.drawerIndex.value=4;
                        Navigator.pop(context);
                      },

                      child: const DrawerListTile(
                        title: 'Setting',
                        svgPath: AppAssets.settingIcon,
                        index: 4,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        bottomNavController.drawerIndex.value=5;
                        Navigator.pop(context);
                      },
                      child: const DrawerListTile(
                        title: 'Help',
                        svgPath: AppAssets.helpIcon,
                        index: 5,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
