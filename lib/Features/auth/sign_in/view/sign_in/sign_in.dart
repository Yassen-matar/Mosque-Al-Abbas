import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/manegr/sign_in_controller.dart';
import 'package:mosque/Features/widget/custom_button.dart';
import 'package:mosque/Features/widget/custom_text_form_field.dart';
import 'package:mosque/core/constant/app_image.dart';
import 'package:mosque/theme/custom_theme.dart';

class SignIn extends GetView<SignInController> {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppImage.logo),
            CustomTextFormField(
                iconData: const Icon(Icons.phone),
                hintText: "رقم الهاتف",
                mycontroller: controller.state.phone),
            CustomTextFormField(
                iconData: const Icon(Icons.key),
                hintText: "كلمة المرور",
                mycontroller: controller.state.password),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.h),
              child: CustomButton(
                  title: "تسجيل الدخول",
                  onpressed: () {},
                  style: CustomTheme.white18Bold),
            )
          ],
        ),
      ),
    );
  }
}
