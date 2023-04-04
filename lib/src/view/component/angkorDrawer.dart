import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/view/component/drawerListTile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AngkorDrawer extends StatelessWidget {
  const AngkorDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 10.h,),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Image.asset(
                  AppAssets.angkorLogo,
                  scale: 0.9,
                ),
              ),
              SizedBox(height: 4.h,),
              SizedBox(
                height: 32.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    DrawerListTile(
                      title: 'Profile',
                      svgPath: AppAssets.profileIcon,
                    ),
                    DrawerListTile(
                      title: 'Orders',
                      svgPath: AppAssets.orderIcon,
                    ),
                    DrawerListTile(
                      title: 'Manage Users',
                      svgPath: AppAssets.manageUserIcon,
                    ),
                    DrawerListTile(
                      title: 'Generate Report',
                      svgPath: AppAssets.genReportIcon,
                    ),
                    DrawerListTile(
                      title: 'Setting',
                      svgPath: AppAssets.settingIcon,
                    ),
                    DrawerListTile(
                      title: 'Help',
                      svgPath: AppAssets.helpIcon,
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
