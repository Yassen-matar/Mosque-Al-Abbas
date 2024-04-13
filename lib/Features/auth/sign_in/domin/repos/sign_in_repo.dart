import 'package:dartz/dartz.dart';
import 'package:mosque/Features/auth/sign_in/domin/entity/user_case.dart';
import 'package:mosque/core/failure/failure.dart';

abstract class SignInRepo {
  Future<Either<Failure, SignInEntity>> signIn(
      {required String phone, required String password});
  // Future<Either<Failure, UserSignInEntity>> postSignUpUserWithGoogle();
  // Future<Either<Failure, UserSignInEntity>> postSignUpUserWithGithub();
  //  Future<Either<Failure, String>>resetPassword({required String email});
}
