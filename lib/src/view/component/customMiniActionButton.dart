import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomMiniActionButton extends StatelessWidget {
  const CustomMiniActionButton(
      {Key? key,
      this.backgroundColor,
      this.textColor,
      required this.borderColor,
      required this.buttonText,
      this.onTap})
      : super(key: key);
  final Color? backgroundColor;
  final Color? textColor;
  final Color borderColor;
  final String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 5.h,
        width: 30.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 16.sp,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
