import 'package:angkor/src/controller/signUpController.dart';
import 'package:angkor/src/core/routes/routeNames.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/customActionButton.dart';
import 'package:angkor/src/view/component/customtextField.dart';
import 'package:angkor/src/view/component/socialButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SignUpController signUpController = Get.put(SignUpController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.mainBlackColor,
      body: Center(
        child: Stack(
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      AppAssets.angkorSplashIcon,
                      scale: 6,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Sign Up",
                      style: AppTextStyles.mainHeading,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      height: 28.h,
                      width: 80.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomTextField(
                            controller: signUpController.usernameController.value,
                            svgPath: AppAssets.profileIcon,
                            hintText: 'User Name',
                          ),
                          CustomTextField(
                            controller: signUpController.emailController.value,
                            svgPath: AppAssets.emailIcon,
                            hintText: 'Email Address',
                          ),
                          CustomTextField(
                            controller: signUpController.passwordController.value,
                            svgPath: AppAssets.emailIcon,
                            hintText: 'Password',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                     CustomActionButton(
                      buttonText: 'Register',
                      backgroundColor: AppColors.mainColor,
                      textColor: AppColors.mainBlackColor,
                      onTap: (){
                        Get.toNamed(RouteNames.otpVerificationScreen);
                      },
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.pureWhite,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: 50.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          SocialContainer(
                            svgPath: AppAssets.facebookIcon,
                            backgroundColor: AppColors.mainColor,
                          ),
                          SocialContainer(
                            svgPath: AppAssets.instaIcon,
                            backgroundColor: AppColors.mainColor,
                          ),
                          SocialContainer(
                            svgPath: AppAssets.googleIcon,
                            backgroundColor: AppColors.mainColor,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
