import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/component/listTileIconContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable(
      {Key? key,
      required this.header1,
      required this.header2,
      required this.data1,
      required this.data2,
      required this.svgPath1,
      required this.svgPath2,
      this.svgPath3,
      this.isChef})
      : super(key: key);
  final String header1;
  final String header2;
  final String data1;
  final String data2;
  final String svgPath1;
  final String svgPath2;
  final String? svgPath3;
  final bool? isChef;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  header1,
                  style: AppTextStyles.tableHeader,
                ),
                Text(
                  header2,
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
              height: 12,
            ),
            ListView.builder(
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            data1,
                            style: AppTextStyles.tableListTiles,
                          ),
                          Text(
                            data2,
                            style: AppTextStyles.tableListTiles,
                          ),
                          SizedBox(
                            width: isChef==true?30.w:22.w,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Visibility(
                                  visible: isChef == true,
                                  child: ListTileIconContainer(
                                    svgPath: svgPath2,
                                  ),
                                ),
                                ListTileIconContainer(
                                  svgPath: svgPath1,
                                ),
                                ListTileIconContainer(
                                  svgPath: svgPath2,
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      // ListTile(
                      // // isThreeLine:true,
                      //   leading: Text(data1,
                      //       style: AppTextStyles.tableListTiles),
                      //   title: Padding(
                      //     padding: const EdgeInsets.only(bottom: 5),
                      //     child: Text(
                      //       data2,
                      //       style: AppTextStyles.tableListTiles,
                      //     ),
                      //   ),
                      //   trailing: SizedBox(
                      //     width: 20.w,
                      //     child: Row(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children:  [
                      //         ListTileIconContainer(
                      //           svgPath: svgPath1,
                      //         ),
                      //         ListTileIconContainer(
                      //           svgPath: svgPath2,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      const Divider(
                        color: AppColors.pureWhite,
                        thickness: 1,
                        height: 28,
                      ),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
