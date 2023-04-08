import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class TitleLoginSection extends StatelessWidget {
  const TitleLoginSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Masuk",
          style: TextStyle(
            fontSize: 25, // ukuran text
            color: MyColors.primaryColor, // warna text
            fontWeight: FontWeight.bold, // ketebalan text
          ),
        ),
        Text(
          "Masuk ke akun mu",
          style: TextStyle(
            fontSize: 16, // ukuran text
            color: MyColors.primaryColor, // warna text
          ),
        ),
      ],
    );
  }
}
