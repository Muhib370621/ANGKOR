import 'package:angkor/src/controller/homeScreenController.dart';
import 'package:angkor/src/controller/loginController.dart';
import 'package:angkor/src/core/routes/routeNames.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/angkorDrawer.dart';
import 'package:angkor/src/view/component/angkorHeader.dart';
import 'package:angkor/src/view/component/chefCategoryContainer.dart';
import 'package:angkor/src/view/component/customIconContainer.dart';
import 'package:angkor/src/view/component/dataBlockwithLabel.dart';
import 'package:angkor/src/view/component/filterIcon.dart';
import 'package:angkor/src/view/component/popupDurationButton.dart';
import 'package:angkor/src/view/component/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../component/tutorialContent.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedItem = "1 Day";

  final List<String> _items = [
    "1 Day",
    "1 Week",
    "1 Month",
    "1 Year",
  ];

  @override
  Widget build(BuildContext context) {
    final HomeScreenController homeScreenController =
        Get.put(HomeScreenController());
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const AngkorDrawer(),
      body: Stack(
        // fit: StackFit.expand,
        children: [
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.fill,
            ),
          ),
          Visibility(
            visible: loginController.selectedItem == "Super Admin",
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
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
                              isActive:
                                  homeScreenController.filterIndex.value == 1
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
                              isActive:
                                  homeScreenController.filterIndex.value == 2
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
                              isActive:
                                  homeScreenController.filterIndex.value == 3
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
                        "Dashboard",
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
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    width: 90.w,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 6.h,
                              width: 70.w,
                              child: SearchTextField(
                                controller:
                                    homeScreenController.searchController.value,
                              ),
                            ),
                            PopupDurationButton(
                              child: CustomIconContainer(
                                svgPath: AppAssets.filterIcon,
                                height: 6.h,
                                width: 12.w,
                                svgColor: AppColors.pureWhite,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                DataBlockWithLabel(
                                  labelText: 'Chefs',
                                  valueText: '12',
                                ),
                                DataBlockWithLabel(
                                  labelText: 'Producers',
                                  valueText: '20',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                DataBlockWithLabel(
                                  labelText: 'Sellers',
                                  valueText: '312',
                                ),
                                DataBlockWithLabel(
                                  labelText: 'Customers',
                                  valueText: '320',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Orders",
                                  style: AppTextStyles.mainHeading,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                DataBlockWithLabel(
                                  labelText: 'New Orders',
                                  valueText: '12',
                                ),
                                DataBlockWithLabel(
                                  labelText: 'Total Orders',
                                  valueText: '20',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                DataBlockWithLabel(
                                  labelText: 'Orders in process',
                                  valueText: '312',
                                ),
                                DataBlockWithLabel(
                                  labelText: 'Delivered',
                                  valueText: '320',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: loginController.selectedItem == "Chef Admin",
            child: Column(
              children: [
                SizedBox(
                  height: 6.h,
                ),
                const AngkorHeader(),
                SizedBox(
                  height: 3.h,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: SizedBox(
                      width: 90.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 6.h,
                                width: 70.w,
                                child: SearchTextField(
                                  controller: homeScreenController
                                      .searchController.value,
                                ),
                              ),
                              PopupMenuButton<String>(
                                surfaceTintColor: AppColors.mainColor,
                                shadowColor: AppColors.mainColor,
                                color: AppColors.mainGreyColor,
                                itemBuilder: (BuildContext context) {
                                  return _items.map((String item) {
                                    return PopupMenuItem<String>(
                                      value: item,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.check,
                                            color: item == _selectedItem
                                                ? AppColors.mainColor
                                                : AppColors.mainGreyColor,
                                            size: 20.sp,
                                          ),
                                          SizedBox(
                                            width: 1.w,
                                          ),
                                          Text(
                                            item,
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              color: AppColors.pureWhite,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList();
                                },
                                onSelected: (String selectedItem) {
                                  setState(() {
                                    _selectedItem = selectedItem;
                                  });
                                },
                                child: CustomIconContainer(
                                  svgPath: AppAssets.filterIcon,
                                  height: 6.h,
                                  width: 12.w,
                                  svgColor: AppColors.pureWhite,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          const ChefCategoryContainer(
                            text: 'Appointments',
                            svgPath: AppAssets.appointmentIcon,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          const ChefCategoryContainer(
                            text: 'Content',
                            svgPath: AppAssets.contentIcon,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          const ChefCategoryContainer(
                            text: 'Items',
                            svgPath: AppAssets.itemsIcon,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          const ChefCategoryContainer(
                            text: 'Meeting',
                            svgPath: AppAssets.meetingIcon,
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          const ChefCategoryContainer(
                            text: 'About',
                            svgPath: AppAssets.aboutIcon,
                          ),
                          // SizedBox(
                          //   height: 3.h,
                          // ),
                          // Text(
                          //   "Recent Tutorials",
                          //   style: AppTextStyles.mainHeading,
                          // ),
                          // SizedBox(
                          //   height: 3.h,
                          // ),
                          // SizedBox(
                          //   height: 10.h,
                          //   // child: ListView(
                          //   //   shrinkWrap: true,
                          //   //   scrollDirection: Axis.horizontal,
                          //   //   // padding: const EdgeInsets.symmetric(horizontal: 15),
                          //   //   physics: const BouncingScrollPhysics(),
                          //   //   children: [
                          //   //     const TutorialContainer(),
                          //   //     SizedBox(
                          //   //       width: 2.5.w,
                          //   //     ),
                          //   //     const TutorialContainer(),
                          //   //     SizedBox(
                          //   //       width: 2.5.w,
                          //   //     ),
                          //   //     const TutorialContainer(),
                          //   //     SizedBox(
                          //   //       width: 2.5.w,
                          //   //     ),
                          //   //     const TutorialContainer(),
                          //   //     SizedBox(
                          //   //       width: 2.5.w,
                          //   //     ),
                          //   //   ],
                          //   // ),
                          // ),
                          SizedBox(
                            height: 3.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: loginController.selectedItem == "Distributor" ||
                loginController.selectedItem == "Seller",
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.s,
              children: [
                SizedBox(
                  height: 6.h,
                ),
                const AngkorHeader(),
                SizedBox(
                  height: 4.h,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: SizedBox(
                      width: 90.w,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Dashboard",
                                    style: AppTextStyles.mainHeading,
                                  ),
                                  Visibility(
                                    visible: loginController.selectedItem ==
                                        "Seller",
                                    child: Text(
                                      "Statistic Report",
                                      style: TextStyle(
                                        fontSize: 17.sp,
                                        color: AppColors.pureWhite,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 70.w,
                                    child: SearchTextField(
                                      controller: homeScreenController
                                          .searchController.value,
                                    ),
                                  ),
                                  PopupDurationButton(
                                    child: CustomIconContainer(
                                      svgPath: AppAssets.filterIcon,
                                      height: 6.h,
                                      width: 12.w,
                                      svgColor: AppColors.pureWhite,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pending Order",
                                    style: AppTextStyles.mainHeadingW600,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 0.6.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(
                                              RouteNames.distributorDetails);
                                        },
                                        child: Text(
                                          "View All",
                                          style: TextStyle(
                                            fontSize: 17.sp,
                                            color: AppColors.pureWhite,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              const FullDataBlockWithLabel(
                                labelText: 'Pending order',
                                valueText: '352',
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                "Orders Report",
                                style: AppTextStyles.mainHeadingW600,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  DataBlockWithLabel(
                                      labelText: "Orders Confirmed",
                                      valueText: "12"),
                                  DataBlockWithLabel(
                                      labelText: "Orders Cancelled",
                                      valueText: "75"),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Text(
                                "Orders",
                                style: AppTextStyles.mainHeadingW600,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  DataBlockWithLabel(
                                      labelText: "Orders Completed",
                                      valueText: "92"),
                                  DataBlockWithLabel(
                                      labelText: "In Process", valueText: "75"),
                                ],
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                "Recent Tutorials",
                                style: AppTextStyles.mainHeading,
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Visibility(
                                visible: loginController.selectedItem ==
                                    "Distributor",
                                child: SizedBox(
                                  height: 10.h,
                                  child: ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    // padding: const EdgeInsets.symmetric(horizontal: 15),
                                    physics: const BouncingScrollPhysics(),
                                    children: [
                                      const TutorialContainer(),
                                      SizedBox(
                                        width: 2.5.w,
                                      ),
                                      const TutorialContainer(),
                                      SizedBox(
                                        width: 2.5.w,
                                      ),
                                      const TutorialContainer(),
                                      SizedBox(
                                        width: 2.5.w,
                                      ),
                                      const TutorialContainer(),
                                      SizedBox(
                                        width: 2.5.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
