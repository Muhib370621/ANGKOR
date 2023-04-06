import 'package:angkor/src/controller/loginController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RoleSelectionPopup extends StatelessWidget {
  const RoleSelectionPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        top: 30,
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: PopupMenuButton<String>(
          surfaceTintColor: AppColors.mainColor,
          shadowColor: AppColors.mainColor,
          color: AppColors.mainGreyColor,
          itemBuilder: (BuildContext context) {
            return loginController.items.map((String item) {
              return PopupMenuItem<String>(
                value: item,
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: item == loginController.selectedItem
                          ? AppColors.mainColor
                          : AppColors.mainGreyColor,
                      size: 20.sp,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      item,
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: AppColors.pureWhite,
                      ),
                    ),
                  ],
                ),
              );
            }).toList();
          },
          onSelected: (String selectedItem) {
            // setState(() {
            loginController.selectedItem = selectedItem;
            // });
          },
          child: Container(
            height: 5.5.h,
            width: 32.w,
            decoration: const BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
            ),
            child: Row(
              children: [
                Lottie.asset(
                  AppAssets.roleIcon,
                  height: 5.h,
                ),
                Text(
                  "Select Role",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.mainBlackColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
