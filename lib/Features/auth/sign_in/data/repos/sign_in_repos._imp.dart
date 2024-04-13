// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';

import 'package:mosque/Features/auth/sign_in/domin/entity/user_case.dart';

import 'package:mosque/core/failure/failure.dart';

import '../../domin/repos/sign_in_repo.dart';

class SignInRepoImpl extends SignInRepo {
  @override
  Future<Either<Failure, SignInEntity>> signIn(
      {required String phone, required String password}) {
    throw UnimplementedError();
  }

  // @override
  // Future<Either<Failure, UserSignInEntity>> postSignInUser(
  //     {required String email, required String password}) async {
  //   try {
  //     final result = await signInRomteDataSource.postSignUpUser(
  //       email: email,
  //       password: password,
  //     );
  //     return Right(result);
  //   } on FirebaseAuthException catch (e) {
  //     return Left(LogInWithEmailAndPasswordFailure.fromCode(e.code));
  //   } catch (_) {
  //     return const Left(LogInWithEmailAndPasswordFailure());
  //   }
  // }
}
