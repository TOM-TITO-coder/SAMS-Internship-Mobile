import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_attendance_management_system/app/constants/constants.dart';
import 'package:school_attendance_management_system/app/constants/text_style.dart';
import 'package:school_attendance_management_system/app/modules/auth/controllers/forgot_password_controller.dart';
import 'package:school_attendance_management_system/app/widgets/button_widget.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({super.key});

  final ForgotPasswordController controller =
      Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildUI(context),
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    final size = Get.size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Forgot Password",
                style: CustomTextStyle.titleStyle,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text(
                "Enter your email and we’ll send you a confirmation code",
                style: CustomTextStyle.textStyleGrey,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                width: double.infinity,
                child: Obx(
                  () => TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.forgotPasswordController,
                    style: CustomTextStyle.textStyleGrey,
                    obscureText: !controller.isVisible.value,
                    decoration: InputDecoration(
                      hintText: "Password",
                      errorText: controller.passwordError.value.isNotEmpty
                          ? controller.passwordError.value
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    onPressed: () {
                      Get.back();
                    },
                    text: 'Cancel',
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: size.height * 0.02,
                  ),
                  MyButton(
                    onPressed: () {},
                    text: 'Submit',
                    color: btnColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
