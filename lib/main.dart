import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prestige_app/core/helper_functions/custom_bloc_observer.dart';
import 'package:prestige_app/core/helper_functions/on_generate_routes.dart';
import 'package:prestige_app/core/services/get_it_service.dart';
import 'package:prestige_app/core/services/shared_preferences_singleton.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'features/splash/presentation/views/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = CustomBlocObserver();
  await Supabase.initialize(
    url: 'https://txweiobnmotlyhjyguhs.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR4d2Vpb2JubW90bHloanlndWhzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjA5NzcyMDIsImV4cCI6MjA3NjU1MzIwMn0.My5092i2U3B-aHt0758axnUJD0f-jlvSFU3ajFv43zc',
  );

  await Prefs.init();
  setupGetIt();
  runApp(const PrestigeWare());
}

class PrestigeWare extends StatelessWidget {
  const PrestigeWare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainDarkBlue),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
