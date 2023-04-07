import 'package:angkor/src/controller/distributorDetailController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/blocks/simpleDataField.dart';
import 'package:angkor/src/view/component/angkorHeader.dart';
import 'package:angkor/src/view/component/dataTable.dart';
import 'package:angkor/src/view/component/filterIcon.dart';
import 'package:angkor/src/view/component/searchTextField.dart';
import 'package:angkor/src/view/screen/distributor/distributorChef.dart';
import 'package:angkor/src/view/screen/distributor/distributorInventory.dart';
import 'package:angkor/src/view/screen/distributor/distributorProfile.dart';
import 'package:angkor/src/view/screen/distributor/distributorRestaurant.dart';
import 'package:angkor/src/view/screen/distributor/distributorSeller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DistributorDetails extends StatelessWidget {
  const DistributorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DistributorDetailController distributorDetailController =
        Get.put(DistributorDetailController());

    return Scaffold(
      // backgroundColor: AppColors.mainBlackColor,
      body: Stack(
        children: [
          SizedBox(
            height: 100.h,
            width: 100.w,
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 100.h,
            color: AppColors.mainBlackColor.withOpacity(0.7),
          ),
          Obx(() {
            return Column(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 6.h,
                        ),
                        const AngkorHeader(
                          backEnabled: true,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              physics: const BouncingScrollPhysics(),
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      distributorDetailController
                                          .filterIndex.value = 0;
                                    },
                                    child: FilterIcon(
                                      filterText: 'Profile',
                                      isActive: distributorDetailController
                                                  .filterIndex.value ==
                                              0
                                          ? true
                                          : false,
                                    )),
                                GestureDetector(
                                  onTap: () {
                                    distributorDetailController
                                        .filterIndex.value = 1;
                                  },
                                  child: FilterIcon(
                                    filterText: 'Inventory',
                                    isActive: distributorDetailController
                                                .filterIndex.value ==
                                            1
                                        ? true
                                        : false,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    distributorDetailController
                                        .filterIndex.value = 2;
                                  },
                                  child: FilterIcon(
                                    filterText: 'Restaurant',
                                    isActive: distributorDetailController
                                                .filterIndex.value ==
                                            2
                                        ? true
                                        : false,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    distributorDetailController
                                        .filterIndex.value = 3;
                                  },
                                  child: FilterIcon(
                                    filterText: 'Chef',
                                    isActive: distributorDetailController
                                                .filterIndex.value ==
                                            3
                                        ? true
                                        : false,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    distributorDetailController
                                        .filterIndex.value = 4;
                                  },
                                  child: FilterIcon(
                                    filterText: 'Seller',
                                    isActive: distributorDetailController
                                                .filterIndex.value ==
                                            4
                                        ? true
                                        : false,
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                      ],
                    ),
                  ],
                ),
                Visibility(
                  visible: distributorDetailController.filterIndex.value == 0,
                  child: Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: DistributorProfile(),
                    ),
                  ),
                ),
                Visibility(
                  visible: distributorDetailController.filterIndex.value == 1,
                  child: Expanded(
                    child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: DistributorInventory(
                          controller: distributorDetailController
                              .inventorySearchController.value,
                        )),
                  ),
                ),
                Visibility(
                  visible: distributorDetailController.filterIndex.value == 2,
                  child: Expanded(
                    child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: DistributorRestaurant(
                          controller: distributorDetailController
                              .restaurantSearchController.value,
                        )),
                  ),
                ),
                Visibility(
                  visible: distributorDetailController.filterIndex.value == 3,
                  child: Expanded(
                    child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: DistributorChef(
                          controller: distributorDetailController
                              .chefSearchController.value,
                        )),
                  ),
                ),
                Visibility(
                  visible: distributorDetailController.filterIndex.value == 4,
                  child: Expanded(
                    child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: DistributorSeller(
                          controller: distributorDetailController
                              .sellerSearchController.value,
                        )),
                  ),
                ),

              ],
            );
          }),
        ],
      ),
    );
  }
}
