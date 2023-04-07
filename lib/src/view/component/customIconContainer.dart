import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/appColors.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer(
      {Key? key,
      required this.svgPath,
      required this.height,
      required this.width,
      this.svgColor})
      : super(key: key);
  final String svgPath;
  final double height;
  final double width;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
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
        color: svgColor,
        // height: 0.5.h,
        // width: 5,
      ),
    );
  }
}
