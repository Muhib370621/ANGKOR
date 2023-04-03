import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({Key? key, required this.filterText, required this.isActive})
      : super(key: key);
  final String filterText;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 5.5.h,
        width: 28.w,
        decoration: BoxDecoration(
          color:
              isActive == true ? AppColors.mainBlackColor : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              25,
            ),
          ),
          border: Border.all(
            color: isActive == true
                ? AppColors.mainBlackColor
                : AppColors.mainColor,
          ),
        ),
        child: Center(
          child: Text(
            filterText,
            style: TextStyle(
              color: AppColors.mainColor,
              fontSize: 19.sp,
            ),
          ),
        ),
      ),
    );
  }
}
