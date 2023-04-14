import 'dart:async';

import 'package:angkor/src/controller/otpVerificationController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/customActionButton.dart';
import 'package:angkor/src/view/component/customMiniActionButton.dart';
import 'package:angkor/src/view/component/customtextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  int _counter = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Start the timer in reverse order when the screen is loaded
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the screen is disposed
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String minutes = (_counter ~/ 60).toString().padLeft(1, '0');
    String seconds = (_counter % 60).toString().padLeft(2, '0');
    final OTPVerificationController otpVerificationController =
        Get.put(OTPVerificationController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.mainBlackColor,
      body: Stack(
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: SizedBox(
              width: 80.w,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 9.h,
                    ),
                    Text(
                      "Please Verify That It's You",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.mainHeading,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "We have send you a code Via Email",
                      style: TextStyle(
                        fontSize: 16.5.sp,
                        color: AppColors.pureWhite,
                      ),
                    ),
                    SizedBox(
                      height: 3.5.h,
                    ),
                    CustomTextField(
                      controller: otpVerificationController.emailController.value,
                      svgPath: AppAssets.emailIcon,
                      hintText: 'Customer Email Address',
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Change my email",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.pureWhite,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Timer",
                      style: TextStyle(
                        fontSize: 16.5.sp,
                        color: AppColors.pureWhite,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      '$minutes:$seconds',
                      style: TextStyle(
                        fontSize: 24.sp,
                        color: AppColors.mainBlackColor,
                      ),
                    ),
                    SizedBox(
                      height: 4.5.h,
                    ),
                    CustomTextField(
                      controller: otpVerificationController.otpController.value,
                      svgPath: AppAssets.otpCodeIcon,
                      hintText: 'OTP Code',
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomActionButton(
                      buttonText: 'Verify',
                      backgroundColor: AppColors.mainColor,
                      textColor: AppColors.mainBlackColor,
                      onTap: () {
                        // Get.toNamed(RouteNames.bottomNav);
                      },
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "Haven't recieve any code?",
                      style: TextStyle(
                        fontSize: 19.sp,
                        color: AppColors.pureWhite,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    CustomMiniActionButton(
                      borderColor: AppColors.mainColor,
                      buttonText: 'Resend',
                      backgroundColor: AppColors.mainBlackColor,
                      textColor: AppColors.mainColor,
                      onTap: () {
                        // Get.toNamed(
                        //   RouteNames.signUpScreen,
                        // );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
