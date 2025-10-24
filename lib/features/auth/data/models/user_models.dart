// lib/features/auth/data/models/user_models.dart
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:prestige_app/features/auth/domain/entities/user_entity.dart';

class UserModels extends UserEntity {
  UserModels({required super.name, required super.email, required super.uID});

  // Create from Supabase User
  factory UserModels.fromSupabaseUser(User user) {
    final metadata = user.userMetadata ?? <String, dynamic>{};
    return UserModels(
      name: metadata['name']?.toString() ??
          user.email?.split('@').first ??
          '',
      email: user.email ?? '',
      uID: user.id,
    );
  }

  // Keep a convenience constructor for backwards compatibility if needed
  factory UserModels.fromFirebaseUser(dynamic user) {
    // In case you still call from previous code — try best-effort mapping.
    return UserModels(
      name: user?.displayName ?? '',
      email: user?.email ?? '',
      uID: user?.uid ?? '',
    );
  }
}
