// ignore_for_file: avoid_print

import 'package:mosque/Features/auth/sign_in/data/model/sign_in_model.dart';

abstract class SignInRomteDataSource {
  Future<SignInModel> signIn({required String email, required String password});
}

class SignInRomteDataSourceImpl extends SignInRomteDataSource {
  @override
  Future<SignInModel> signIn(
      {required String email, required String password}) {
    throw UnimplementedError();
  }
}
