import 'package:angkor/src/controller/inventorySellerController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:angkor/src/view/blocks/sellerItemExpansionTile.dart';
import 'package:angkor/src/view/component/angkorHeader.dart';
import 'package:angkor/src/view/component/customIconContainer.dart';
import 'package:angkor/src/view/component/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SellerInventory extends StatelessWidget {
  const SellerInventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InventorySellerController inventorySellerController =
    Get.put(InventorySellerController());
    return Obx(() {
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
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
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
                      width: 85.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Items",
                            style: AppTextStyles.mainHeading,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:70.w,
                                child: SearchTextField(
                                  controller:
                                  inventorySellerController.searchController.value,
                                ),
                              ),
                              CustomIconContainer(
                                svgPath: AppAssets.addIcon,
                                height: 6.h,
                                width: 12.w,
                                svgColor: AppColors.pureWhite,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    width: 85.w,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context,index){
                      return const SellerItemExpansionTile();
                    })
                  ),
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
