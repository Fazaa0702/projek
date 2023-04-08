import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';
import 'package:daily_healthy_habit_mobile/controllers/login_controller.dart';

class PassLoginFormSection extends StatelessWidget {
  const PassLoginFormSection({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        obscureText: controller.obsecureText.value,
        // onChanged: (value) => password = value,
        onChanged: (value) => controller.password = value,
        decoration: InputDecoration(
          hintText: "Kata Sandi",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: MyColors.primaryColor),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.primaryColor),
          ),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.lock, color: MyColors.primaryColor),
          suffixIcon: IconButton(
            icon: Icon(
                controller.obsecureText.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: MyColors.primaryColor),
            onPressed: () => controller.toggle(),
          ),
        ),
      ),
    );
  }
}
