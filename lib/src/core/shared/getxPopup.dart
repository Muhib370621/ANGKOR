import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/popupActionButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewOrder extends StatelessWidget {
  const NewOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(18.0), // set the border radius to 10.0
      ),
      // surfaceTintColor: Colors.orange,
      // backgroundColor: Colors.transparent,
      // set the background color with opacity
      child: Container(
        height: 36.h,
        width: 80.w,
        decoration: const BoxDecoration(
          color: AppColors.mainBlackColor,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "You have a new order",
              style: TextStyle(
                color: AppColors.pureWhite,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 2.h),
            // Container(
            //   height: 8.2.h,
            //   width: 18.w,
            //   decoration: BoxDecoration(
            //     color: AppColors.pureWhite,
            //     shape: BoxShape.circle,
            //   ),
            //   child:
            Image.asset(
              AppAssets.sampleAvatar,
              scale: 4.5,
              // height: 8.h,
              // fit: BoxFit.fill,
            ),
            // SizedBox(
            //   height: 1.h,
            // ),
            Text(
              "Cristina James",
              style: AppTextStyles.mainHeadingW600,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Food Name x2   |",
                      style: AppTextStyles.popupLightSmallText),
                  // VerticalDivider(color: AppColors.pureWhite,width: 5.w,),
                  Text("Food Name x2   |",
                      style: AppTextStyles.popupLightSmallText),
                  Text("Drink Name", style: AppTextStyles.popupLightSmallText),
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Divider(
              color: AppColors.mainLightGreyColor,
              thickness: 0.3.w,
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PopupActionButton(
                  backgroundColor: AppColors.redAccent,
                  text: "Decline",
                  onTap: () {
                    Get.back();
                  },
                ),
                PopupActionButton(
                  backgroundColor: AppColors.greenAccent,
                  text: "Accept",
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


