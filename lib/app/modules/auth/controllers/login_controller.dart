import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isVisible = true.obs;

  // Reactive variables for validation
  var emailError = ''.obs;
  var passwordError = ''.obs;

  //validate email
  void validateEmail(String value) {
    if (value.isEmpty) {
      emailError.value = "Email is required";
    } else if (!GetUtils.isEmail(value)) {
      emailError.value = 'Invalid email address';
    } else {
      emailError.value = '';
    }
  }

  // validate password
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
    validateEmail(emailController.text);
    validatePassword(passwordController.text);

    if (emailError.value.isEmpty && passwordError.value.isEmpty) {
      // proceed with form submission
      Get.snackbar("Success", "Form is valid");
    } else {
      Get.snackbar("Error", "Please fix the errors",dismissDirection: DismissDirection.vertical);
    }
  }

  // visible password
  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }

  void login() {
    // implement logic
  }

  void forgotPassword() {
    // logic
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
