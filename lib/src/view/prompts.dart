import 'package:angkor/src/core/shared/addItemsPopup.dart';
import 'package:angkor/src/core/shared/getxPopup.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/utils/appAssets.dart';

class Prompts {
  static newOrder() {
    Get.dialog(
      const NewOrder(),
      barrierColor: AppColors.pureWhite.withOpacity(
        0.8,
      ),
    );
  }

  static addCustomerItems() {
    Get.dialog(
      const AddItemsPopup(),
      barrierColor: AppColors.pureWhite.withOpacity(
        0.8,
      ),
    );
  }

  static showError(String title, String middleText) {
    return Get.snackbar(
      title,
      '',
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
      // margin: const EdgeInsets.all(25),
      backgroundColor: Colors.redAccent.withOpacity(
        0.1,
      ),
      colorText: Colors.white,
      titleText: Text(
        title,
        style: TextStyle(
          fontSize: 20.sp,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        middleText,
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.white,
        ), // set the font size of the message
      ),
      icon: SizedBox(
        height: 4.h,
        child: Row(
          children: [
            SizedBox(width:1.w),
            Lottie.asset(AppAssets.errorIcon),
            SizedBox(width:1.w),
          ],
        ),
      ),
    );
  }
  static showSuccess(String title, String middleText) {
    return Get.snackbar(
      title,
      '',
      duration: const Duration(seconds: 4),
      snackPosition: SnackPosition.BOTTOM,
      // margin: const EdgeInsets.all(25),
      backgroundColor: Colors.greenAccent.withOpacity(
        0.3,
      ),
      colorText: Colors.white,
      titleText: Text(
        title,
        style: TextStyle(
          fontSize: 20.sp,
          color: Colors.white,
        ),
      ),
      messageText: Text(
        middleText,
        style: TextStyle(
          fontSize: 16.sp,
          color: Colors.white,
        ), // set the font size of the message
      ),
      icon: Lottie.asset(AppAssets.successIcon),
    );
  }
}
