import 'package:flutter/material.dart';
import 'package:daily_healthy_habit_mobile/routes/route_name.dart';
import 'package:daily_healthy_habit_mobile/theme/hex_color.dart';
import 'package:get/get.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Page4> {
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
                  'assets/images/splashscreen_image5.png',
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
                  'assets/logos/progressdotp4.png',
                  height: 9,
                  width: 78,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => Get.toNamed(RouteName.register),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: MyColors.primaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      child: const Text(
                        "Daftar Sekarang",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Sudah punya akun?",
                          style: TextStyle(
                            color: MyColors.secondaryColor,
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(RouteName.login),
                          child: const Text(
                            "Masuk",
                            style: TextStyle(
                              color: MyColors.primaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // sudah punya akun
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
