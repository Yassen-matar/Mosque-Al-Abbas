import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mosque/Features/auth/sign_in/data/data_source/sign_in_remote_data_source.dart';
import 'package:mosque/Features/auth/sign_in/domin/use_case/reste_password_use_case.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/state/state.dart';

import '../../../data/repos/sign_in_repos._imp.dart';

class SignInController extends GetxController {
  late SignInUseCase signInUseCase;

  final state = SignInVaribale();
  bool changeIconPassowrd(bool changePas) {
    changePas = changePas == true ? false : true;
    update();
    return changePas;
  }

  postSignIn(String phone, String password) async {}
  @override
  void onInit() {
    signInUseCase = SignInUseCase(SignInRepoImpl(SignInRomteDataSourceImpl()));
    state.focusPassword = FocusNode();
    state.focusPhone = FocusNode();
    state.focusPassword.addListener(() {});
    state.focusPhone.addListener(() {});

    state.formKey = GlobalKey<FormState>();
    state.phone = TextEditingController();
    state.password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    state.focusPhone.dispose();
    state.focusPassword.dispose();
    state.phone.dispose();
    state.password.dispose();
    super.dispose();
  }
}
