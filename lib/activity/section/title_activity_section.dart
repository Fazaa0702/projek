import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';


class TitleActivitySection extends StatefulWidget {
  const TitleActivitySection({Key? key}) : super(key: key);

  @override
  State<TitleActivitySection> createState() => _TitleActivitySectionState();
}

class _TitleActivitySectionState extends State<TitleActivitySection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        children: <Widget> [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Judul Aktivitas",
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
              hintText: "Judul Aktivitas",
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
