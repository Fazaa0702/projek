import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';
import 'package:flutter/material.dart';

class TodayTitleSection extends StatelessWidget {
  const TodayTitleSection({
    Key? key,
    required this.primaryColor,
  }) : super(key: key);

  final HexColor primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Text(
            'Today',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'See all',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
