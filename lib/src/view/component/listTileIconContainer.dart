import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListTileIconContainer extends StatelessWidget {
  const ListTileIconContainer({Key? key, required this.svgPath}) : super(key: key);
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.h,
      width: 9.w,
      decoration: const BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
      ),
      child: SvgPicture.asset(
        svgPath,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
