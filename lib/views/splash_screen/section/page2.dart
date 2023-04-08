import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/routes/route_name.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Page2> {
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
                  height: 70,
                ),
                Image.asset(
                  'assets/images/splashscreen_image3.png',
                  height: 250,
                ),
                const Text(
                  "Jadikan setiap hari berarti dengan aplikasi kami",
                  style: TextStyle(
                    color: MyColors.textColor,
                    fontSize: 20,
                    //fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset(
                  'assets/logos/progressdotp2.png',
                  height: 9,
                  width: 78,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(RouteName.splashScreenPage3);
                  },
                  child: Image.asset(
                    'assets/logos/next_rounded.png',
                    height: 50,
                  ),
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
