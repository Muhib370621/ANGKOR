import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InventorySellerController extends GetxController{
  Rx<TextEditingController> searchController = TextEditingController().obs;
  RxBool isExpanded=false.obs;
  RxInt counter =0.obs;
  void increment(){
    counter++;
  }
  void decrement(){
    // print(counter);
    if(counter>=1){
    counter--;
    }
  }

}