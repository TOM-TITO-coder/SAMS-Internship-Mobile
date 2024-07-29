import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final forgotPasswordController = TextEditingController();

  var isVisible = true.obs;
  var passwordError = ''.obs;

  void validatePassword(String value) {
    if (value.isEmpty) {
      passwordError.value = 'Password is required';
    } else if (value.length < 6) {
      passwordError.value = 'Password must be at least 6 characters';
    } else {
      passwordError.value = '';
    }
  }

  // Method to handle form submission
  void submitForm() {
    validatePassword(forgotPasswordController.text);

    if (passwordError.value.isEmpty) {
      // proceed with form submission
      Get.snackbar("Success", "Form is valid");
    } else {
      Get.snackbar(
        "Error",
        "Please fix the errors",
        dismissDirection: DismissDirection.vertical,
      );
    }
  }

  // visible password
  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }

  @override
  void onClose() {
    forgotPasswordController.dispose();
    super.onClose();
  }
}
