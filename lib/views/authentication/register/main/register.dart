import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:daily_healthy_habit_mobile/controllers/register_controller.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/register/section/button_regis_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/register/section/email_regis_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/register/section/image_regis_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/register/section/name_regis_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/register/section/pass_regis_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/register/section/title_regis_section.dart';
import 'package:daily_healthy_habit_mobile/views/authentication/register/section/to_login_regis_section.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  var controller = Get.put(RegisterController());

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
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TitleRegisSection(),
                  const ImageRegisSection(),
                  NameRegisFormSection(controller: controller),
                  EmailRegisFormSection(controller: controller),
                  const SizedBox(height: 20),
                  PassRegisFormSection(controller: controller),
                  const SizedBox(height: 20),
                  ButtonRegisSection(controller: controller),
                  const SizedBox(height: 16),
                  const ToLoginRegisSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
