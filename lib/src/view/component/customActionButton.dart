import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton(
      {Key? key,
      this.backgroundColor,
      this.textColor,
      required this.buttonText,
      this.onTap})
      : super(key: key);
  final Color? backgroundColor;
  final Color? textColor;
  final String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 7.h,
        width: 80.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              28,
            ),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 21.sp,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
