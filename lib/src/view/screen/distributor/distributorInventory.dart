import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/view/component/dataTable.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../component/searchTextField.dart';

class DistributorInventory extends StatelessWidget {
  const DistributorInventory({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: Column(
        children: [
          SizedBox(
            width: 90.w,
            child: SearchTextField(
                controller: controller),
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            width: 90.w,
            child: const CustomDataTable(
              header1: 'Items',
              header2: 'Category',
              data1: "Food 1",
              data2: 'Category',
              svgPath1: AppAssets.editIcon,
              svgPath2: AppAssets.deleteIcon,
            ),
          ),
        ],
      ),
    );
  }
}
