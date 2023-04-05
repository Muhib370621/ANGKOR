import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/view/component/customIconContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AngkorHeader extends StatelessWidget {
  const AngkorHeader({Key? key, this.backEnabled}) : super(key: key);
  final bool? backEnabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 13.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              backEnabled == true
                  ? {Get.back()}
                  : Scaffold.of(context).openDrawer();
            },
            child: CustomIconContainer(
              svgPath: backEnabled == true
                  ? AppAssets.backIcon
                  : AppAssets.appbarIcon,
              height: 5.7.h,
              width: 12.5.w,
            ),
          ),
          Image.asset(
            AppAssets.angkorSplashIcon,
            scale: 9,
          ),
          CustomIconContainer(
            svgPath: AppAssets.bellIcon,
            height: 5.7.h,
            width: 12.5.w,
          ),
        ],
      ),
    );
  }
}
