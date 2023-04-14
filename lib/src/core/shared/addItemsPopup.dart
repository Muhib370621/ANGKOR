import 'package:angkor/src/controller/homeScreenController.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/customActionButton.dart';
import 'package:angkor/src/view/component/customMiniActionButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddItemsPopup extends StatelessWidget {
  const AddItemsPopup({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenController homeScreenController =
        Get.put(HomeScreenController());
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(18.0), // set the border radius to 10.0
      ),
      // surfaceTintColor: Colors.orange,
      // backgroundColor: Colors.transparent,
      // set the background color with opacity
      child: Container(
        height: 58.h,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.clear,
                    size: 20.sp,
                    color: AppColors.pureWhite,
                  ),
                ),
              ),
            ),
            Text(
              "Items",
              style: AppTextStyles.subHeading,
            ),
            SizedBox(
              height: 1.h,
            ),
            Obx(() {
              return SizedBox(
                width: 40.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        homeScreenController.decrement();
                      },
                      child: Container(
                        height: 5.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.mainColor,
                          ),
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 20.sp,
                          color: AppColors.pureWhite,
                        ),
                      ),
                    ),
                    Text(
                      homeScreenController.counter.value.toString(),
                      style: TextStyle(
                        fontSize: 22.sp,
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        homeScreenController.increment();
                      },
                      child: Container(
                        height: 5.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.mainColor,
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 20.sp,
                          color: AppColors.pureWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            Divider(
              color: AppColors.mainLightGreyColor,
              thickness: 0.3.w,
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Obx(() {
                  return SizedBox(
                    width: 80.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Small Combo",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.pureWhite,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "+\$0.10",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.pureWhite,
                              ),
                            ),
                            Radio(
                                value: 1,
                                activeColor: AppColors.mainColor,
                                groupValue:
                                    homeScreenController.radioValue.value,
                                onChanged: (val) {
                                  homeScreenController.radioValue.value = val!;
                                }),
                            // SolidRadio(color: AppColors.mainColor, size: 20.sp, value: 1, onChanged: onChanged)
                          ],
                        )
                      ],
                    ),
                  );
                }),
                Obx(() {
                  return SizedBox(
                    width: 80.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Medium Combo",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.pureWhite,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "+\$1.50",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.pureWhite,
                              ),
                            ),
                            Radio(
                                value: 2,
                                activeColor: AppColors.mainColor,
                                focusColor: AppColors.pureWhite,
                                groupValue:
                                    homeScreenController.radioValue.value,
                                onChanged: (val) {
                                  homeScreenController.radioValue.value = val!;
                                }),
                            // SolidRadio(color: AppColors.mainColor, size: 20.sp, value: 1, onChanged: onChanged)
                          ],
                        )
                      ],
                    ),
                  );
                }),
                Obx(() {
                  return SizedBox(
                    width: 80.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Large Combo",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.pureWhite,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "+\$3.00",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.pureWhite,
                              ),
                            ),
                            Radio(
                                value: 3,
                                activeColor: AppColors.mainColor,
                                focusColor: AppColors.pureWhite,
                                groupValue:
                                    homeScreenController.radioValue.value,
                                onChanged: (val) {
                                  homeScreenController.radioValue.value = val!;
                                }),
                            // SolidRadio(color: AppColors.mainColor, size: 20.sp, value: 1, onChanged: onChanged)
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ],
            ),
            Divider(
              color: AppColors.mainLightGreyColor,
              thickness: 0.3.w,
            ),
            SizedBox(
              height: 1.h,
            ),
            CustomMiniActionButton(
              borderColor: AppColors.mainColor,
              buttonText: 'Extras',
              textColor: AppColors.mainColor,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "This item doesn't have extras",
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.pureWhite,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              width: 70.w,
              height: 6.h,
              child: CustomActionButton(
                buttonText: "Add",
                backgroundColor: AppColors.mainColor,
                onTap: () {
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
