import 'package:angkor/src/controller/homeScreenController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/angkorDrawer.dart';
import 'package:angkor/src/view/component/angkorHeader.dart';
import 'package:angkor/src/view/component/customIconContainer.dart';
import 'package:angkor/src/view/component/dataBlockwithLabel.dart';
import 'package:angkor/src/view/component/drawerListTile.dart';
import 'package:angkor/src/view/component/filterIcon.dart';
import 'package:angkor/src/view/component/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedItem = "1 Day";

  List<String> _items = [
    "1 Day",
    "1 Week",
    "1 Month",
    "1 Year",
  ];

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
            height: 100.h,
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
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
                                        color: item==_selectedItem?AppColors.mainColor:AppColors.mainGreyColor,
                                        size: 20.sp,
                                      ),
                                      SizedBox(width: 1.w,),
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
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const DataBlockWithLabel(
                                labelText: 'Chefs',
                                valueText: '12',
                              ),
                              const DataBlockWithLabel(
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
                            children: [
                              const DataBlockWithLabel(
                                labelText: 'Sellers',
                                valueText: '312',
                              ),
                              const DataBlockWithLabel(
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
                            children: [
                              const DataBlockWithLabel(
                                labelText: 'New Orders',
                                valueText: '12',
                              ),
                              const DataBlockWithLabel(
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
                            children: [
                              const DataBlockWithLabel(
                                labelText: 'Orders in process',
                                valueText: '312',
                              ),
                              const DataBlockWithLabel(
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
