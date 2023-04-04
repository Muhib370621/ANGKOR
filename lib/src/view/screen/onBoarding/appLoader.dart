import 'package:angkor/src/core/utils/appAssets.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:angkor/src/view/screen/dashBoardScreen.dart';
import 'package:angkor/src/view/screen/onBoarding/loginScreen.dart';
import 'package:flutter/material.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({Key? key}) : super(key: key);

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  Future<bool> dummyTimer() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    // Get.toNamed('/loginScreen');
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait([
          dummyTimer(),
        ]),
        builder: (BuildContext context, AsyncSnapshot<List<bool>> snapshot) {
          if (snapshot.hasData) {
            if ((snapshot.data?[0] ?? true) == false) {
              return const LoginScreen();
            } else {
              return const LoginScreen();
            }
          }
          return Scaffold(
            backgroundColor: AppColors.mainBlackColor,
            body: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 100,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppAssets.angkorSplashIcon,
                  scale: 4,
                ),
              ),
            ),
          );
        }
        // }
        );
  }
}
