import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';


class TimeStartSection extends StatefulWidget {
  const TimeStartSection({Key? key}) : super(key: key);

  @override
  State<TimeStartSection> createState() => _TimeStartSectionState();
}

class _TimeStartSectionState extends State<TimeStartSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: <Widget> [
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Waktu Mulai",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              //onChanged: (value) => controller.name = value,
              decoration: const InputDecoration(
                hintText: "Waktu Mulai",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.primaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.primaryColor),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ],
        )

    );
  }
}
