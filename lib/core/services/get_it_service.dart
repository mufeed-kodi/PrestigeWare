import 'package:get_it/get_it.dart';
import 'package:prestige_app/core/services/supabase_auth_service.dart';
import 'package:prestige_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:prestige_app/features/auth/domain/repos/auth_repo.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<SupabaseAuthService>(SupabaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      supabaseAuthService: getIt<SupabaseAuthService>(),
    ),
  );
}
