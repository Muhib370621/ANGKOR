import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SocialContainer extends StatelessWidget {
  const SocialContainer({Key? key, this.backgroundColor, required this.svgPath})
      : super(key: key);
  final Color? backgroundColor;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 13.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        svgPath,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
