import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/controllers/register_controller.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class NameRegisFormSection extends StatelessWidget {
  const NameRegisFormSection({
    super.key,
    required this.controller,
  });

  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: TextFormField(
        //onChanged: (value) => controller.name = value,
        decoration: InputDecoration(
          hintText: "Nama",
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
            Icons.people,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
