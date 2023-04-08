import 'package:angkor/src/controller/inventorySellerController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomMenuItem extends StatefulWidget {
  const CustomMenuItem({Key? key}) : super(key: key);

  @override
  State<CustomMenuItem> createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {
  int counter=0;

  void increment(){
    setState(() {
      counter++;
    });
  }
  void decrement(){
    if(counter>=1){
      setState(() {
        counter--;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    // final InventorySellerController inventorySellerController =
    // Get.put(InventorySellerController());
    // return Obx(() {
      return SizedBox(
        width: 90.w,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .start,
              children: [
                SizedBox(width: 2.w,),
                Image.asset(
                  AppAssets.sampleFood,
                  scale: 3,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Food Name",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors
                            .mainColor,
                        fontWeight: FontWeight
                            .w500,
                      ),
                    ),
                    SizedBox(height: 1.8.h,),
                    Text(
                      "Key Ingredients",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors
                            .pureWhite,
                        fontWeight: FontWeight
                            .w300,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Ingredient 1   |",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors
                                .mainColor,
                            fontWeight: FontWeight
                                .w300,
                          ),
                        ),
                        Text(
                          "Ingredient 2   |",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors
                                .mainColor,
                            fontWeight: FontWeight
                                .w300,
                          ),
                        ),
                        Text(
                          "Ingredient 3",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors
                                .mainColor,
                            fontWeight: FontWeight
                                .w300,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 2.5.w,
                ),
                Container(
                  height: 3.8.h,
                  width: 17.w,
                  decoration: BoxDecoration(
                    color: AppColors
                        .mainColor,
                    borderRadius: BorderRadius
                        .all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            decrement(),
                        child: Icon(
                          Icons.remove,
                          size: 19.sp,
                          color: AppColors
                              .pureWhite,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                        height: 2.5.h,
                        child: Container(
                          color: AppColors
                              .mainBlackColor,
                          child: Center(
                            child: Text(
                             counter.toString(),
                              style: TextStyle(
                                color: AppColors
                                    .pureWhite,
                                fontSize: 16
                                    .sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () =>
                            increment(),
                        child: Icon(
                          Icons.add,
                          size: 19.sp,
                          color: AppColors
                              .pureWhite,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 2.h,),
          ],
        ),
      );
    // });
  }
}
