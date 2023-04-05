import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DataBlockWithLabel extends StatelessWidget {
  const DataBlockWithLabel({Key? key, required this.labelText, required this.valueText}) : super(key: key);
  final String labelText;
  final String valueText;


  @override
  Widget build(BuildContext context) {
  return  Container(
      height: 17.h,
      width: 42.w,
      decoration: const BoxDecoration(
        color: AppColors.mainGreyColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              labelText,
              style: TextStyle(
                fontSize: 17.5.sp,
                color: AppColors.pureWhite,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              valueText,
              style: TextStyle(
                fontSize: 29.sp,
                color: AppColors.mainColor,
                fontWeight: FontWeight.w600
              ),
            ),

          ],
        ),
      ),
    );
  }
}
