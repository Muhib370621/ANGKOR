import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.svgPath,
      required this.hintText})
      : super(key: key);
  final TextEditingController controller;
  final String svgPath;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: AppColors.pureWhite),

      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(
              color: AppColors.mainColor,
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: AppColors.mainColor,
              ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white60),

          prefixIcon: SvgPicture.asset(
            svgPath,
            fit: BoxFit.scaleDown,
          ),

      ),
      // onChanged: contactController.onSearchTextChanged,
    );
  }
}
