import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageUserController extends GetxController{
  RxInt filterIndex = 0.obs;
  Rx<TextEditingController> searchController = TextEditingController().obs;

}