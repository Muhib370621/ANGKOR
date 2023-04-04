import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPVerificationController extends GetxController{
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
}