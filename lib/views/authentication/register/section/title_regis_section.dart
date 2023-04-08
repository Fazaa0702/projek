import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class TitleRegisSection extends StatelessWidget {
  const TitleRegisSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Daftar Akun",
          style: TextStyle(
            fontSize: 25, // ukuran text
            color: MyColors.primaryColor, // warna text
            fontWeight: FontWeight.bold, // ketebalan text
          ),
        ),
        Text(
          "Buat akun barumu",
          style: TextStyle(
            fontSize: 16, // ukuran text
            color: MyColors.primaryColor, // warna text
          ),
        ),
      ],
    );
  }
}
