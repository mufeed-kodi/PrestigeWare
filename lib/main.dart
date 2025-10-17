import 'package:flutter/material.dart';
import 'package:prestige_app/core/helper_functions/on_generate_routes.dart';
import 'package:prestige_app/core/services/shared_preferences_singleton.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
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
  