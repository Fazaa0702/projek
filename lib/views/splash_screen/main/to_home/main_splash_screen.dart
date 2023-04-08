import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/controllers/splashscreen_controller.dart';
import 'package:get/get.dart';

class MainSplashScreen extends StatefulWidget {
  const MainSplashScreen({super.key});

  @override
  State<MainSplashScreen> createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen> {
  final controller = Get.put(SplashScreenController());

  @override
  void initState() {
    controller.init();
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
                  'assets/logos/logo.png',
                  height: 100,
                ),
                const Expanded(
                  // jika isLoading true maka tampilkan progress indicator
                  child: SizedBox(
                    height: 100,
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
