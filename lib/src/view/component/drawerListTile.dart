import 'package:angkor/src/controller/bottomNavController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key, required this.title, required this.svgPath, required this.index})
      : super(key: key);
  final String title;
  final String svgPath;
  final int index;

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController =
    Get.put(BottomNavController());
    return Obx(() {
      return Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 5.w,
          ),
          SizedBox(
            width: 5.w,
            child: SvgPicture.asset(
              svgPath,
              fit: BoxFit.scaleDown,
              color: bottomNavController.drawerIndex.value == index ? AppColors
                  .mainColor : AppColors.pureWhite,
              // height: 2.h,
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 17.sp,
              color: bottomNavController.drawerIndex.value == index ? AppColors
                  .mainColor : AppColors.pureWhite,
            ),
          )
        ],
      );
    });
  }
}
