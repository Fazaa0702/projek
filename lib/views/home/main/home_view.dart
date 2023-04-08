import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';
import 'package:daily_healthy_habit_mobile/views/home/section/date_section.dart';
import 'package:daily_healthy_habit_mobile/views/home/section/shortcut_section.dart';
import 'package:daily_healthy_habit_mobile/views/home/section/shortcut_title_section.dart';
import 'package:daily_healthy_habit_mobile/views/home/section/task_section.dart';
import 'package:daily_healthy_habit_mobile/views/home/section/task_title_section.dart';
import 'package:daily_healthy_habit_mobile/views/home/section/today_title_section.dart';
import 'package:daily_healthy_habit_mobile/controllers/account_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.put(AccountController());
  final primaryColor = HexColor('#E61A4F');
  final secondaryColor = HexColor('#F06D85');
  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: primaryColor,
          size: 32,
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/logos/logo_title.png',
          height: 38,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                controller.logout();
              },
              icon: Icon(
                Icons.account_circle,
                color: primaryColor,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 10,
              right: 20,
              left: 20,
            ),
            child: Column(
              children: [
                TodayTitleSection(primaryColor: primaryColor),
                DateSection(primaryColor: primaryColor),
                const TaskTitleSection(),
                TaskSection(
                  primaryColor: primaryColor,
                  secondaryColor: secondaryColor,
                ),
                const ShortcutTitleSection(),
                ShortcutSection(primaryColor: primaryColor),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: primaryColor,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.settings, title: 'Settings'),
        ],
        onTap: (int i) {
          if (i == 2) {
            // jika index ke-2 (Settings) ditekan, panggil fungsi exitApp
            // controller.exitApp();
          }
        },
      ),
    );
  }
}
