import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/view/component/dataTable.dart';
import 'package:angkor/src/view/component/searchTextField.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DistributorSeller extends StatelessWidget {
  const DistributorSeller({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: CustomDataTable(
            header1: 'Sellers',
            header2: 'Category',
            data1: "Seller Name",
            data2: 'Category',
            svgPath1: AppAssets.editIcon,
            svgPath2: AppAssets.deleteIcon,
          ),
        ),
      ],
    );
  }
}
