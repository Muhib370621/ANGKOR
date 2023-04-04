import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  Rx<TextEditingController> usernameController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;

}