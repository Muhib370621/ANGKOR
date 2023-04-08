import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/view/component/customExpansionTile.dart';
import 'package:angkor/src/view/component/customMenuItem.dart';
import 'package:angkor/src/view/component/customMiniActionButton.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SellerItemExpansionTile extends StatelessWidget {
  const SellerItemExpansionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomExpansionTile(
          children: [
            Container(
              // width: 90.w,
              decoration: const BoxDecoration(
                color: AppColors.mainBlackColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    20,
                  ),
                  bottomRight: Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: AppColors.mainLightGreyColor,
                    thickness: 0.2.h,
                  ),
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      "Top Menu",
                      style: TextStyle(
                          fontSize: 18.sp, color: AppColors.mainColor),
                    ),
                  ),
                  Divider(
                    color: AppColors.mainLightGreyColor,
                    thickness: 0.2.h,
                  ),
                  ListView.builder(
                      // padding: EdgeInsets.only(bottom: 10
                      // ),
                    physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return CustomMenuItem();
                      }),
                  Divider(
                    color: AppColors.mainLightGreyColor,
                    thickness: 0.2.h,
                  ),
                  Container(
                    height: 10.h,
                    width: 65.w,
                    //                 decoration: BoxDecoration(
                    //                   color: Colors.greenAccent,
                    //                   borderRadius: BorderRadius.only(
                    //                     bottomRight: Radius.circular(
                    //                       10,
                    //                     ),
                    //                     bottomLeft: Radius.circular(
                    // 10,
                    // ),
                    //                   ),
                    //                 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomMiniActionButton(
                          borderColor: AppColors.mainColor,
                          textColor: AppColors.mainColor,
                          buttonText: 'View More',
                        ),
                        CustomMiniActionButton(
                          borderColor: AppColors.mainColor,
                          textColor: AppColors.mainBlackColor,
                          buttonText: 'Place Order',
                          backgroundColor: AppColors.mainColor,
                        ),
                      ],
                    ),
                  ),
                  // Text("Top Menu",style: TextStyle(fontSize: 18.sp,color: AppColors.mainColor),),
                  // Text("Top Menu",style: TextStyle(fontSize: 18.sp,color: AppColors.mainColor),),
                  // Text("Top Menu",style: TextStyle(fontSize: 18.sp,color: AppColors.mainColor),),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
