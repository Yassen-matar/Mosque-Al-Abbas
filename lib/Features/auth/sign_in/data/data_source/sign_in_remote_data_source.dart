// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:mosque/Features/auth/sign_in/data/model/sign_in_model.dart';
import 'package:http/http.dart' as http;
import 'package:retry/retry.dart';

abstract class SignInRomteDataSource {
  Future<SignInModel> signIn({required String phone, required String password});
}

class SignInRomteDataSourceImpl extends SignInRomteDataSource {
  int maxAttempts = 8;
  int timeout = 30;
  @override
  Future<SignInModel> signIn(
      {required String phone, required String password}) async {
    final r = RetryOptions(maxAttempts: maxAttempts);
    http.Response response = await r.retry(
      () => http.post(
        Uri.parse(""
            // config_app.apiLoginViaMobile(),
            ),
        body: {"phone": phone, "password": password},
      ).timeout(
        Duration(seconds: timeout),
      ),
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );

    if (response.statusCode == 200) {
      return SignInModel.fromJson(
        json.decode(response.body),
      );
    } else {
      print("Failed to Login ");
      throw Exception("Failed to Login ");
    }
  }
}
