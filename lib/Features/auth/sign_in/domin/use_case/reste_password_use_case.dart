import 'package:dartz/dartz.dart';
import 'package:mosque/Features/auth/sign_in/data/model/sign_in_model.dart';
import 'package:mosque/core/failure/failure.dart';

import '../repos/sign_in_repo.dart';

class SignInUseCase {
  final SignInRepo signInRepo;
  SignInUseCase(this.signInRepo);

  Future<Either<Failure, SignInModel>> call(
      {required String phone, required String password}) async {
    return await signInRepo.signIn(phone: phone, password: password);
  }
}
