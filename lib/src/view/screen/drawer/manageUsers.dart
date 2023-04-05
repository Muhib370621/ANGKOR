import 'package:angkor/src/controller/manageUserController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/angkorHeader.dart';
import 'package:angkor/src/view/component/filterIcon.dart';
import 'package:angkor/src/view/component/listTileIconContainer.dart';
import 'package:angkor/src/view/component/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ManageUsers extends StatelessWidget {
  const ManageUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ManageUserController manageUserController =
        Get.put(ManageUserController());
    return Scaffold(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Name",
                    style: AppTextStyles.tableHeader,
                  ),
                  Text(
                    "Restaurant Name",
                    style: AppTextStyles.tableHeader,
                  ),
                  Container(
                    height: 4.5.h,
                    width: 18.w,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                      color: AppColors.mainBlackColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          8,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Add",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.pureWhite,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.add,
                          color: AppColors.pureWhite,
                          size: 18.sp,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: AppColors.pureWhite,
                thickness: 1,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Text("Chef Name",
                                style: AppTextStyles.tableListTiles),
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Restaurant Name",
                                style: AppTextStyles.tableListTiles,
                              ),
                            ),
                            trailing: SizedBox(
                              width: 20.w,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: const [
                                  ListTileIconContainer(svgPath: AppAssets.commentIcon,),
                                  ListTileIconContainer(svgPath: AppAssets.deleteIcon,),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            color: AppColors.pureWhite,
                            thickness: 1,
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
