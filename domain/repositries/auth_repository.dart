import 'package:dartz/dartz.dart';

import '../../core/Failures/auth_failures.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, Unit>> RegisterWithEmailAndPasswort(
      {required String email, required String password});

  Future<Either<AuthFailure, Unit>> SigninWithEmailAndPasswort(
      {required String email, required String password});

  Future<void> signOut();
}
