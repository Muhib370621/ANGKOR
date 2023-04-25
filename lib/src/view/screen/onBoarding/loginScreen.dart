import 'package:angkor/src/controller/loginController.dart';
import 'package:angkor/src/core/routes/routeNames.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/blocks/roleSelectionPopup.dart';
import 'package:angkor/src/view/component/customActionButton.dart';
import 'package:angkor/src/view/component/customMiniActionButton.dart';
import 'package:angkor/src/view/component/customtextField.dart';
import 'package:angkor/src/view/component/socialButton.dart';
import 'package:angkor/src/view/prompts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppColors.mainBlackColor,
      resizeToAvoidBottomInset: false,
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
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const RoleSelectionPopup(),
                  SizedBox(
                    height: 2.h,
                  ),
                  Image.asset(
                    AppAssets.angkorSplashIcon,
                    scale: 6,
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Text(
                    "Welcome",
                    style: AppTextStyles.mainHeading,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    height: 20.h,
                    width: 80.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomTextField(
                          controller: loginController.usernameController.value,
                          svgPath: AppAssets.profileIcon,
                          hintText: 'User Name',
                        ),
                        CustomTextField(
                          controller: loginController.emailController.value,
                          svgPath: AppAssets.emailIcon,
                          hintText: 'Email Address',
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: AppColors.pureWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomActionButton(
                    buttonText: 'Log in',
                    backgroundColor: AppColors.mainColor,
                    textColor: AppColors.mainBlackColor,
                    onTap: () {
                     loginController.valid();
                    },
                  ),
                  SizedBox(
                    height: 6.h,
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
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "Don't Have Any Account?",
                    style: TextStyle(
                      fontSize: 19.sp,
                      color: AppColors.pureWhite,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomMiniActionButton(
                    borderColor: AppColors.mainColor,
                    buttonText: 'Register Now',
                    backgroundColor: AppColors.mainBlackColor,
                    textColor: AppColors.mainColor,
                    onTap: () {
                      Get.toNamed(
                        RouteNames.signUpScreen,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
