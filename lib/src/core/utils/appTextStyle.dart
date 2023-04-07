import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppTextStyles{
  AppTextStyles._();
  static  TextStyle mainHeading = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.pureWhite,
  );
  static  TextStyle mainHeadingW600 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.pureWhite,
  );
  static  TextStyle subHeading = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.pureWhite,
  );

  static  TextStyle tableHeader = TextStyle(
    fontSize: 18.sp,
    color: AppColors.pureWhite,
    fontWeight: FontWeight.w700,
  );
  static TextStyle tableListTiles=TextStyle(
  fontSize: 16.5.sp,
  color: AppColors.pureWhite,
  fontWeight: FontWeight.w500,
  );
  static TextStyle popupLightSmallText=TextStyle(
    fontSize: 14.sp,
    color: AppColors.mainLightGreyColor,
  );

}