import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/controllers/register_controller.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class EmailRegisFormSection extends StatelessWidget {
  const EmailRegisFormSection({
    super.key,
    required this.controller,
  });

  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) => controller.email = value,
      decoration: InputDecoration(
        hintText: "Email",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: MyColors.primaryColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.primaryColor),
        ),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(
          Icons.email,
          color: MyColors.primaryColor,
        ),
      ),
    );
  }
}