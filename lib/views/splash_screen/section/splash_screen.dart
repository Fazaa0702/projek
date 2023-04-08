import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/controllers/splashscreen_controller.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.put(SplashScreenController());
  @override
  void initState() {
    super.initState();
    controller.toPage1();
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
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/logos/logo_title.png',
                  height: 60,
                ),
                Image.asset(
                  'assets/images/splashscreen_image1.png',
                  height: 250,
                ),
                const Text(
                  "Bangun Kebiasaan Anda,kebiasaan Anda membangun Anda",
                  style: TextStyle(
                    color: MyColors.textColor,
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "V1.0.0",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
