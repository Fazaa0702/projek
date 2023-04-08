import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class ButtonAddSection extends StatelessWidget {
  const ButtonAddSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 28.0),
      child: ElevatedButton(
        onPressed:() {},
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.primaryColor,
          fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'Tambah Aktivitas',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );

  }
}
