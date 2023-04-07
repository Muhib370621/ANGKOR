import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DistributorDetailController extends GetxController{

  ///profile
  RxInt filterIndex = 0.obs;
  Rx<TextEditingController> businessNameController = TextEditingController().obs;
  Rx<TextEditingController> industryController = TextEditingController().obs;
  Rx<TextEditingController> addressController = TextEditingController().obs;
  Rx<TextEditingController> contactDetailsController = TextEditingController().obs;

  ///inventory
  Rx<TextEditingController> inventorySearchController = TextEditingController().obs;

  ///restaurant
  Rx<TextEditingController> restaurantSearchController = TextEditingController().obs;

  ///chef
  Rx<TextEditingController> chefSearchController = TextEditingController().obs;

  ///seller
  Rx<TextEditingController> sellerSearchController = TextEditingController().obs;

}