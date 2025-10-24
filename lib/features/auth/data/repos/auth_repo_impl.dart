// lib/features/auth/data/repos/auth_repo_impl.dart
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:prestige_app/core/errors/exceptions.dart';
import 'package:prestige_app/core/errors/failures.dart';
import 'package:prestige_app/core/services/supabase_auth_service.dart';
import 'package:prestige_app/features/auth/data/models/user_models.dart';
import 'package:prestige_app/features/auth/domain/entities/user_entity.dart';
import 'package:prestige_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final SupabaseAuthService supabaseAuthService;
  // final authRepo = AuthRepoImpl(supabaseAuthService: SupabaseAuthService()); {{{{this shit caused me 4 hours}}}}
  AuthRepoImpl({required this.supabaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await supabaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );

      return Right(UserModels.fromSupabaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return Left(ServerFailure('An error occurred. please try again later.'));
    }
  }
}
