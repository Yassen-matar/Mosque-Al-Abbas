import 'package:dartz/dartz.dart';
import 'package:mosque/Features/auth/sign_in/data/model/sign_in_model.dart';
import 'package:mosque/core/failure/failure.dart';

abstract class SignInRepo {
  Future<Either<Failure, SignInModel>> signIn(
      {required String phone, required String password});
}
