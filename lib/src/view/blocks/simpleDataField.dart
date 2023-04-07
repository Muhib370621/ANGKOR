import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SimpleDataField extends StatelessWidget {
  const SimpleDataField({Key? key}) : super(key: key);
  // final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.mainColor,
        ),
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            25,
          ),
        ),
      ),
    );
  }
}
