import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool isValid = false.obs;

  void validateForm() {
    final String username = usernameController.text.trim();
    final String password = passwordController.text.trim();

    if (username.isNotEmpty && password.isNotEmpty) {
      // Perform additional validation logic if needed

      isValid.value = false;
    } else {
      isValid.value = true;
    }
  }
}