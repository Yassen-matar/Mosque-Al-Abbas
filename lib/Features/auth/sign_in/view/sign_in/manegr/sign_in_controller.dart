import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/state/state.dart';

class SignInController extends GetxController {
  final state = SignInVaribale();
  @override
  void onInit() {
    state.formKey = GlobalKey<FormState>();
    state.phone = TextEditingController();
    state.password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    state.phone.dispose();
    state.password.dispose();
    super.dispose();
  }
}
