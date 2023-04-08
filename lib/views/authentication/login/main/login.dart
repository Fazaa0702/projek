import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/controllers/login_controller.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/login/section/email_form_login_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/login/section/image_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/login/section/pass_form_login_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/login/section/title_login_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/login/section/login_button_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/login/section/to_regis_section.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final controller = Get.put(LoginController());

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
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TitleLoginSection(),
                    const ImageLoginSection(),
                    EmailFormLoginSection(controller: controller),
                    const SizedBox(height: 16),
                    PassLoginFormSection(controller: controller),
                    const SizedBox(height: 25),
                    LoginButtonSection(controller: controller),
                    const SizedBox(height: 12),
                    const ToRegisSection(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
