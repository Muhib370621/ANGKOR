import 'package:angkor/src/controller/bottomNavController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavBarTile extends StatelessWidget {
  const NavBarTile({Key? key, required this.index, required this.svgPath}) : super(key: key);
  final int index;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController =
    Get.put(BottomNavController());
    return InkWell(
      splashColor: AppColors.mainColor,
      onTap: (){
        bottomNavController.incrementTab(index);
      },
      child: SizedBox(
        width: 22.w,
        height: 6.5.h,
        // color: Colors.white60,
        child: SvgPicture.asset(
          svgPath,
          fit: BoxFit.scaleDown,
          color: bottomNavController.cIndex.value == index
              ? AppColors.mainColor
              : AppColors.pureWhite,
        ),
      ),
    );
  }
}
