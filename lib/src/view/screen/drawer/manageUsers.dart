import 'package:angkor/src/controller/manageUserController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/view/component/angkorHeader.dart';
import 'package:angkor/src/view/component/dataTable.dart';
import 'package:angkor/src/view/component/filterIcon.dart';
import 'package:angkor/src/view/component/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ManageUsers extends StatelessWidget {
  const ManageUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ManageUserController manageUserController =
        Get.put(ManageUserController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            color: AppColors.mainBlackColor.withOpacity(
              0.55,
            ),
          ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        physics: const BouncingScrollPhysics(),
                        children: [
                          GestureDetector(
                              onTap: () {
                                manageUserController.filterIndex.value = 0;
                              },
                              child: FilterIcon(
                                filterText: 'Chefs',
                                isActive:
                                    manageUserController.filterIndex.value == 0
                                        ? true
                                        : false,
                              )),
                          GestureDetector(
                            onTap: () {
                              manageUserController.filterIndex.value = 1;
                            },
                            child: FilterIcon(
                              filterText: 'Producers',
                              isActive: manageUserController.filterIndex.value == 1
                                  ? true
                                  : false,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              manageUserController.filterIndex.value = 2;
                            },
                            child: FilterIcon(
                              filterText: 'Seller',
                              isActive: manageUserController.filterIndex.value == 2
                                  ? true
                                  : false,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              manageUserController.filterIndex.value = 3;
                            },
                            child: FilterIcon(
                              filterText: 'Customers',
                              isActive: manageUserController.filterIndex.value == 3
                                  ? true
                                  : false,
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 90.w,
                    child: SearchTextField(
                      controller: manageUserController.searchController.value,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              ),
              const Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: CustomDataTable(
                    header1: 'Name',
                    header2: 'Restaurant Name',
                    data1: 'Chef Name',
                    data2: 'Restaurant Name',
                    svgPath1: AppAssets.commentIcon,
                    svgPath2: AppAssets.deleteIcon,
                    svgPath3: "",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
