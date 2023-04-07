import 'package:angkor/src/core/shared/getxPopup.dart';
import 'package:angkor/src/core/utils/appColors.dart';
import 'package:get/get.dart';

class Prompts {
  static newOrder() {
    Get.dialog(
      const NewOrder(),
      barrierColor: AppColors.pureWhite.withOpacity(
        0.8,
      ),
    );
  }
}