import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/routes/route_name.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class ToLoginRegisSection extends StatelessWidget {
  const ToLoginRegisSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Sudah Punya Akun?",
          style: TextStyle(
            fontSize: 16, // ukuran text
            color: MyColors.secondaryColor, // warna text
          ),
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(RouteName.login);
          },
          child: const Text(
            "Masuk",
            style: TextStyle(
              fontSize: 14, // ukuran text
              color: MyColors.primaryColor, // warna text
            ),
          ),
        ),
      ],
    );
  }
}
