// lib/core/services/supabase_auth_service.dart
import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:prestige_app/core/errors/exceptions.dart';

class SupabaseAuthService {
  final SupabaseClient supabase;

  SupabaseAuthService({SupabaseClient? client})
    : supabase = client ?? Supabase.instance.client;

  /// Creates a new user with email & password.
  /// Optionally pass `name` to store in user metadata.
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      // signUp returns an AuthResponse-like object: data (with user), error if any.
      final res = await supabase.auth.signUp(
        email: email,
        password: password,
          data: {
           'name': name,
          },
        
      );

      final user = res.user;
      if (user == null) {
        throw CustomException(message: 'User could not be created.');
      }
      return res.user!;

      // return user;
    } on AuthException catch (e) {
      log('🟡 Exception in SupabaseAuthService.createUserWithEmailAndPassword: ${e.toString()}');
      if (e.code == 'wrong-password') {
        throw CustomException(message: 'Wrong password.');
      } else if (e.message == 'User already registered') {
        throw CustomException(message: 'User already exists.');
      } else if (e.code == 'invalid-email') {
        throw CustomException(message: 'Invalid email.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'Email already in use.');
      } else {
        throw CustomException(message: 'An error occurred. Please try again.');
      }
    
    } catch (e) {
      log('Exception in SupabaseAuthService.createUserWithEmailAndPassword: ${e.toString()}');
      // Other unexpected errors
      throw CustomException(
        message: 'An unexpected error occurred. Please try again later.',
      );
    }
  }
}
