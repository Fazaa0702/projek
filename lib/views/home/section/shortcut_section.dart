import 'package:daily_healthy_habit_mobile/models/shortcut_model.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';
import 'package:flutter/cupertino.dart';

class ShortcutSection extends StatelessWidget {
  const ShortcutSection({
    Key? key,
    required this.primaryColor,
  }) : super(key: key);

  final HexColor primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: shortcutList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Image.asset(
                shortcutList[index].icon!,
                height: 36,
              ),
            ),
          );
        },
      ),
    );
  }
}
