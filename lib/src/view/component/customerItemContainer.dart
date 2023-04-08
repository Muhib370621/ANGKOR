import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomerItemContainer extends StatelessWidget {
  const CustomerItemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 9.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 0.5.w,),
          Image.asset(AppAssets.sampleFood),
          SizedBox(width: 0.5.w,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Jumbo Meaty Burger",
                style: TextStyle(
                    fontSize: 18.sp, color: AppColors.mainColor),
              ),
              SizedBox(height: 1.h,),
              SizedBox(
                width: 60.w,
                child: Text(
                  "This is a example of description of ingredients on this suculent a delicious burger",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.pureWhite,
                  ),
                ),
              ),
            ],
          ),
          Text(
            "\$ 15",
            style: AppTextStyles.mainHeading,
          ),
          SizedBox(width: 0.5.w,),

        ],
      ),
    );
  }
}
