import 'package:angkor/src/controller/homeScreenController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/angkorDrawer.dart';
import 'package:angkor/src/view/component/angkorHeader.dart';
import 'package:angkor/src/view/component/drawerListTile.dart';
import 'package:angkor/src/view/component/filterIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenController homeScreenController =
        Get.put(HomeScreenController());
    return Scaffold(
      drawer: const AngkorDrawer(),
      body: Stack(
        children: [
          SizedBox(
            width: 100.w,
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.fill,
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 6.h,
              ),
              const AngkorHeader(),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 5.5.h,
                child: Obx(() {
                  return ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      GestureDetector(
                          onTap: () {
                            homeScreenController.filterIndex.value = 0;
                          },
                          child: FilterIcon(
                            filterText: 'Chefs',
                            isActive:
                                homeScreenController.filterIndex.value == 0
                                    ? true
                                    : false,
                          )),
                      GestureDetector(
                        onTap: () {
                          homeScreenController.filterIndex.value = 1;
                        },
                        child: FilterIcon(
                          filterText: 'Producers',
                          isActive: homeScreenController.filterIndex.value == 1
                              ? true
                              : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          homeScreenController.filterIndex.value = 2;
                        },
                        child: FilterIcon(
                          filterText: 'Seller',
                          isActive: homeScreenController.filterIndex.value == 2
                              ? true
                              : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          homeScreenController.filterIndex.value = 3;
                        },
                        child: FilterIcon(
                          filterText: 'Customers',
                          isActive: homeScreenController.filterIndex.value == 3
                              ? true
                              : false,
                        ),
                      ),
                    ],
                  );
                }),
              ),
              SizedBox(
                height: 3.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "DashBoard",
                    style: AppTextStyles.mainHeading,
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "Statistic Report",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
