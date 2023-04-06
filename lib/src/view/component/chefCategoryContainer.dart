import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChefCategoryContainer extends StatelessWidget {
  const ChefCategoryContainer(
      {Key? key, required this.text, required this.svgPath})
      : super(key: key);
  final String text;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      decoration: const BoxDecoration(
        color: AppColors.mainBlackColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 5.w,),
          SvgPicture.asset(
            svgPath,
          ),
          SizedBox(width: 9.w,),

          Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.pureWhite,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
