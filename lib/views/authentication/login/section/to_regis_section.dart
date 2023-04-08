import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/routes/route_name.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class ToRegisSection extends StatelessWidget {
  const ToRegisSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Belum punya akun?",
          style: TextStyle(
            color: MyColors.secondaryColor,
            fontSize: 14,
          ),
        ),
        TextButton(
          onPressed: () {
            Get.offNamed(RouteName.register);
          },
          child: const Text(
            "Daftar Akun",
            style: TextStyle(
              color: MyColors.primaryColor,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
