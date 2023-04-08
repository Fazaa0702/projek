import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/views/home/activity/section/title_activity_section.dart';
import 'package:daily_healthy_habit_mobile/views/home/activity/section/time_start_section.dart';
import 'package:daily_healthy_habit_mobile/views/home/activity/section/time_stop_section.dart';
import 'package:daily_healthy_habit_mobile/views/home/activity/section/button_add_section.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';


class AddActivity extends StatefulWidget {
  const AddActivity({Key? key}) : super(key: key);

  @override
  State<AddActivity> createState() => _AddActivityState();
}

class _AddActivityState extends State<AddActivity> {
  @override

    Widget build(BuildContext context) {
      double paddingTop = MediaQuery.of(context).padding.top;
      double width = Get.width;
      double height = Get.height;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.primaryColor,
        ),
        body: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: EdgeInsets.only(top: 0),
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        size: 29,
                      ),
                    ),
                    const TitleActivitySection(),
                    const TimeStartSection(),
                    const TimeStopSection(),
                    const ButtonAddSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

    }
}

