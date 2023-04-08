import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/controllers/splashscreen_controller.dart';
import 'package:get/get.dart';

class ToSplashScreen extends StatefulWidget {
  const ToSplashScreen({super.key});

  @override
  State<ToSplashScreen> createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<ToSplashScreen> {
  final controller = Get.put(SplashScreenController());

  @override
  void initState() {
    controller.toPage0();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: EdgeInsets.only(top: paddingTop),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 100,
                  ),
                ),
                Image.asset(
                  'assets/logos/logo_title.png',
                  height: 70,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          MyColors.primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Text('v1.0.0',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
