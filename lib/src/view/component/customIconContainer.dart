import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/appColors.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({Key? key, required this.svgPath}) : super(key: key);
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 5.7.h,
      width: 10.5.w,
      decoration: const BoxDecoration(
        color: AppColors.mainBlackColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            14,
          ),
        ),
      ),
      child: SvgPicture.asset(
        svgPath,
        fit: BoxFit.scaleDown,
        // height: 0.5.h,
        // width: 5,
      ),
    );
  }
}
