import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/controllers/register_controller.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class PassRegisFormSection extends StatelessWidget {
  const PassRegisFormSection({
    super.key,
    required this.controller,
  });

  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextFormField(
          onChanged: (value) => controller.password = value,
          obscureText: controller.obsecurePassword.value,
          decoration: InputDecoration(
            hintText: "Password",
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
                  controller.obsecurePassword.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: MyColors.primaryColor),
              onPressed: () {
                controller.togglePassword();
              },
            ),
          ),
        ));
  }
}
