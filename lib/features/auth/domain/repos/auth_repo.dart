import 'package:dartz/dartz.dart';
import 'package:prestige_app/core/errors/failures.dart';
import 'package:prestige_app/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });
}
