import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PopupActionButton extends StatelessWidget {
  const PopupActionButton({Key? key, required this.backgroundColor, required this.text, this.onTap}) : super(key: key);
  final Color backgroundColor;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 5.5.h,
        width: 28.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              25,
            ),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.pureWhite,
            ),
          ),
        ),
      ),
    )
    ;
  }
}
