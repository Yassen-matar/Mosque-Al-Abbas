// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:mosque/Features/auth/sign_in/data/data_source/sign_in_remote_data_source.dart';
import 'package:mosque/Features/auth/sign_in/data/model/sign_in_model.dart';

import 'package:mosque/core/failure/failure.dart';

import '../../domin/repos/sign_in_repo.dart';

class SignInRepoImpl extends SignInRepo {
  SignInRomteDataSourceImpl signInRomteDataSourceImpl;
  SignInRepoImpl(this.signInRomteDataSourceImpl);

  @override
  Future<Either<Failure, SignInModel>> signIn(
      {required String phone, required String password}) async {
    try {
      final result = await signInRomteDataSourceImpl.signIn(
        phone: phone,
        password: password,
      );
      return Right(result);
    } catch (_) {
      return const Left(Failure.failure);
    }
  }
}
