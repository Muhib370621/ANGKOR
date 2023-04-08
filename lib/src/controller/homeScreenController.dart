import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxInt filterIndex = 0.obs;
  Rx<TextEditingController> searchController = TextEditingController().obs;
  RxBool isFilter = false.obs;

  ///customer variables
  RxInt radioValue = 1.obs;
  RxInt counter = 1.obs;

  void increment() {
    counter++;
  }

  void decrement() {
    if (counter >= 1) {
      counter--;
    }
  }
}
