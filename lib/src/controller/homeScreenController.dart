import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{

  RxInt filterIndex = 0.obs;
  Rx<TextEditingController> searchController = TextEditingController().obs;
  RxBool isFilter = false.obs;


}