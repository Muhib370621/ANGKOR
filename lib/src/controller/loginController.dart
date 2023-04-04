import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  Rx<TextEditingController> usernameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;

}