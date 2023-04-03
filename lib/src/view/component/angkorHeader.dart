import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/view/component/customIconContainer.dart';
import 'package:flutter/material.dart';

class AngkorHeader extends StatelessWidget {
  const AngkorHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();

          },
          child: const CustomIconContainer(
            svgPath: AppAssets.appbarIcon,
          ),
        ),
        Image.asset(
          AppAssets.angkorLogo,
          scale: 0.9,
        ),
        const CustomIconContainer(
          svgPath: AppAssets.bellIcon,
        ),
      ],
    );
  }
}
