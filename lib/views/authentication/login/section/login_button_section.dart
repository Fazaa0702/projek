import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';
import 'package:daily_healthy_habit_mobile/controllers/login_controller.dart';

class LoginButtonSection extends StatelessWidget {
  const LoginButtonSection({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (kDebugMode) {
          print(controller.email);
          print(controller.password);
        }
        if (controller.email == '' || controller.password == '') {
          Get.snackbar(
            "Gak bisa masuk nih",
            "Email dan kata sandi gak boleh kosong",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        } else {
          controller.login();
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryColor,
        fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        'Masuk',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
