import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/controllers/register_controller.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class ButtonRegisSection extends StatelessWidget {
  const ButtonRegisSection({
    super.key,
    required this.controller,
  });

  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (kDebugMode) {
          print(controller.name);
          print(controller.email);
          print(controller.password);
        }
        controller.register();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryColor,
        fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        'Buat Akun',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
