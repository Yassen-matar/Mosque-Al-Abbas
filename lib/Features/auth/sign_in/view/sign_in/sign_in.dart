import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/manegr/sign_in_controller.dart';
import 'package:mosque/Features/widget/custom_button.dart';
import 'package:mosque/Features/widget/custom_text_form_field.dart';
import 'package:mosque/core/constant/app_image.dart';
import 'package:mosque/core/constant/app_routes.dart';
import 'package:mosque/theme/custom_theme.dart';

class SignIn extends GetView<SignInController> {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    bool changePas = true;
    return Scaffold(
      body: GetBuilder<SignInController>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(AppImage.logo),
              Form(
                  key: controller.state.formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                          focusNode: controller.state.focusPhone,
                          iconData: const Icon(Icons.phone),
                          hintText: "رقم الهاتف",
                          mycontroller: controller.state.phone),
                      CustomTextFormField(
                          focusNode: controller.state.focusPassword,
                          iconData: const Icon(Icons.key),
                          password: true,
                          obscureText: changePas == true ? true : false,
                          iconPassword: changePas == true
                              ? const Icon(
                                  Icons.visibility_outlined,
                                )
                              : const Icon(Icons.visibility_off_outlined),
                          onTap: () {
                            changePas =
                                controller.changeIconPassowrd(changePas);
                          },
                          hintText: "كلمة المرور",
                          mycontroller: controller.state.password),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.h),
                child: CustomButton(
                    title: "تسجيل الدخول",
                    onpressed: () {
                      controller.state.focusPhone.unfocus();
                      controller.state.focusPassword.unfocus();
                    },
                    style: CustomTheme.white18Bold),
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoute.signUp);
                  },
                  child: Text(
                    "انشاء حساب جديد",
                    style: CustomTheme.grey18Bold,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
