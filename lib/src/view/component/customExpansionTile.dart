import 'package:angkor/src/controller/inventorySellerController.dart';
import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/appColors.dart';

class CustomExpansionTile extends StatefulWidget {
  // final Widget title;
  // final Widget leading;
  // final IconData expandedIcon;
  // final IconData collapsedIcon;
  final List<Widget> children;

  const CustomExpansionTile({super.key,
    // required this.title,
    // required this.leading,
    // this.expandedIcon = Icons.arrow_drop_up,
    // this.collapsedIcon = Icons.arrow_drop_down,
    required this.children,
  });

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  final InventorySellerController inventorySellerController =
  Get.put(InventorySellerController());
  bool _isExpanded = false;
  // int counter=0;


  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _toggleExpansion,
          child: Row(
            children: [
              // widget.leading!,
              Container(
                height: 8.5.h,
                width: 85.w,
                padding: const EdgeInsets.all(8),
                decoration:  BoxDecoration(
                  color: AppColors.mainBlackColor,
                  borderRadius: BorderRadius.only(
                    topRight:  Radius.circular(
                      20,
                    ),
                    topLeft:  Radius.circular(
                      20,
                    ),
                    bottomRight:  Radius.circular(
                      _isExpanded==true?0:20,
                    ),
                    bottomLeft: Radius.circular(
                      _isExpanded==true?0:20,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(AppAssets.restaurantLogo),
                    Text(
                      "Restaurant Name",
                      style: AppTextStyles.subHeading,
                    ),
                    SvgPicture.asset(
                      _isExpanded
                          ? AppAssets.downIcon
                          : AppAssets.upIcon,
                      fit: BoxFit.scaleDown,
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 22.sp,
                      color: AppColors.pureWhite,
                    ),
                    // Icon(Icons.arrow)
                  ],
                ),
              ),
            ],
          ),
        ),
        if (_isExpanded)
          Column(
            children: widget.children!,
          ),
      ],
    );
  }
}
