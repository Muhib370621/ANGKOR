import 'package:angkor/src/core/routes/routeNames.dart';
import 'package:angkor/src/model/loginModel.dart';
import 'package:angkor/src/services/authenticationServices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/prompts.dart';

class LoginController extends GetxController {
  Rx<TextEditingController> usernameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  String selectedItem = "Super Admin";
  RxString isValid = "".obs;
  RxString loginMessage = "".obs;
  RxBool isLoading = false.obs;

  List<String> items = [
    "Super Admin",
    "Chef Admin",
    "Distributor",
    "Seller",
    "Customer",
  ];

  valid() {
    if (usernameController.value.text == "" ||
        emailController.value.text == "") {
      Prompts.showError("Oops!", "Enter Credential Please!");
    } else if (!usernameController.value.text.contains('@')) {
      Prompts.showError("Oops!", "Enter Valid Email Please!");
    } else {
      Get.toNamed(RouteNames.bottomNav);
    }
  }

  Future<LoginModel> login(String email , String pass,String type) async {
    isLoading.value=true;
    var result = await AuthenticationServices().login(email, pass,type);
    // check.value = result;
    result.response.status = loginMessage.value;
    isLoading.value=false;
    return result;

  }

}
