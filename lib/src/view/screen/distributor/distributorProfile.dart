import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/blocks/simpleDataField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DistributorProfile extends StatelessWidget {
  const DistributorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Business Profile",
            style: AppTextStyles.mainHeadingW600,
          ),
          SizedBox(
            height: 2.h,
          ),
          Stack(
            children: [
              SvgPicture.asset(
                AppAssets.circleAvatar,
              ),
              Positioned(
                bottom: 8,
                right: 0,
                child: Container(
                  height: 5.h,
                  width: 8.5.w,
                  decoration: const BoxDecoration(
                    color: AppColors.mainBlackColor,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    AppAssets.cameraIcon,
                    fit: BoxFit.scaleDown,
                    // height: 2.5.h,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Business Name",
                style: AppTextStyles.subHeading,
              ),
              SizedBox(height: 1.5.h,),
              const SimpleDataField(),
              SizedBox(height: 1.5.h,),
              Text(
                "Industry",
                style: AppTextStyles.subHeading,
              ),
              SizedBox(height: 1.5.h,),
              const SimpleDataField(),
              SizedBox(height: 1.5.h,),
              Text(
                "Address",
                style: AppTextStyles.subHeading,
              ),
              SizedBox(height: 1.5.h,),
              const SimpleDataField(),
              SizedBox(height: 1.5.h,),

              Text(
                "Contact Details",
                style: AppTextStyles.subHeading,
              ),
              SizedBox(height: 1.5.h,),
              const SimpleDataField(),
              SizedBox(height: 3.5.h,),

            ],
          ),
        ],
      ),
    )
    ;
  }
}
