import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: AppColors.mainBlackColor),

        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.pureWhite,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.pureWhite,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.pureWhite,
            ),
          ),
          hintText: "Search....",
          hintStyle: const TextStyle(color: Colors.black38),

          prefixIcon: SvgPicture.asset(
            AppAssets.searchIcon,
            fit: BoxFit.scaleDown,
            color: Colors.black38,
          ),

        ),
        // onChanged: contactController.onSearchTextChanged,
      ),
    );
  }
}
