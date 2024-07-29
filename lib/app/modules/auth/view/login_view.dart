import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_attendance_management_system/app/constants/constants.dart';
import 'package:school_attendance_management_system/app/constants/text_style.dart';
import 'package:school_attendance_management_system/app/widgets/button_widget.dart';

import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final size = Get.size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(radius: 50,),
                  SizedBox(height: size.height * 0.03,),
                  const Text("Attendance", style: CustomTextStyle.titleStyle,),
                  SizedBox(height: size.height * 0.03,),
                  SizedBox(
                    width: double.infinity,
                    child: Obx(
                      () => TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.emailController,
                        style: CustomTextStyle.textStyleGrey,
                        decoration: InputDecoration(
                          hintText: "Enter your email",
                          errorText: controller.emailError.value.isNotEmpty
                              ? controller.emailError.value
                              : null,
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: btnColor, width: 2.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: btnColor, width: 2.0),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                        ),
                        onChanged: (value) => controller.validateEmail(value),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Obx(
                      () => TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.passwordController,
                        style: CustomTextStyle.textStyleGrey,
                        obscureText: !controller.isVisible.value,
                        decoration: InputDecoration(
                          hintText: "Password",
                          errorText: controller.passwordError.value.isNotEmpty? controller.passwordError.value : null,
              
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: btnColor, width: 2.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: btnColor, width: 2.0),
                          ),
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(controller.isVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: controller.toggleVisibility,
                          ),
                        ),
                        onChanged: (value) => controller.validatePassword(value),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password", style: CustomTextStyle.titleStyleData, textAlign: TextAlign.right,),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  MyButton(
                    onPressed: () => controller.submitForm(),
                    text: "Login",
                    color: btnColor,
                    heightButton: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
