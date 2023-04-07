import 'package:angkor/src/core/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PopupDurationButton extends StatefulWidget {
  const PopupDurationButton({
    Key? key,
    this.child,
  }) : super(key: key);
  final Widget? child;

  @override
  State<PopupDurationButton> createState() => _PopupDurationButtonState(child);
}

class _PopupDurationButtonState extends State<PopupDurationButton> {
  final Widget? child;

  String _selectedItem = "1 Day";

  List<String> _items = [
    "1 Day",
    "1 Week",
    "1 Month",
    "1 Year",
  ];

  _PopupDurationButtonState(this.child);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(

      surfaceTintColor: AppColors.mainColor,
      shadowColor: AppColors.mainColor,
      color: AppColors.mainGreyColor,
      itemBuilder: (BuildContext context) {
        return _items.map((String item) {
          return PopupMenuItem<String>(
            height: 5.5.h,
            value: item,
            child: Column(
              children: [
                // SizedBox(height: 0.1.h,),
                Row(
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
                Divider(
                  color: AppColors.mainLightGreyColor,
                  thickness: 0.1.h,
                  height: 4.w,
                  // indent: 10,
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
      child: child,
    );
  }
}
