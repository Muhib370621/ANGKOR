import 'package:angkor/src/controller/homeScreenController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/customerItemContainer.dart';
import 'package:angkor/src/view/component/filterIcon.dart';
import 'package:angkor/src/view/prompts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomerHome extends StatelessWidget {
  const CustomerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeScreenController homeScreenController =
        Get.put(HomeScreenController());
    return Scaffold(
      backgroundColor: AppColors.mainBlackColor,
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 28.h,
                    // width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(
                            20,
                          ),
                          bottomLeft: Radius.circular(
                            20,
                          ),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              AppAssets.customerHeader,
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    top: 20.h,
                    left: 35.w,
                    child: Text(
                      "Burgers",
                      style: AppTextStyles.mainHeading,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
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
                            filterText: 'Combo',
                            isActive: homeScreenController.filterIndex.value == 0
                                ? true
                                : false,
                          )),
                      GestureDetector(
                        onTap: () {
                          homeScreenController.filterIndex.value = 1;
                        },
                        child: FilterIcon(
                          filterText: 'Burgers',
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
                          filterText: 'Snacks',
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
                          filterText: 'Desert',
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
                height: 1.h,
              ),
              Divider(
                color: AppColors.mainLightGreyColor,
                thickness: 0.2.h,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  Prompts.addCustomerItems();
                },
                child: Column(
                  children: [
                    CustomerItemContainer(),
                    Divider(
                      color: AppColors.mainLightGreyColor,
                      thickness: 0.2.h,
                    ),
                    // SizedBox(height: 2.h,),
                  ],
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
