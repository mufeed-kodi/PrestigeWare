import 'package:flutter/material.dart';
import 'package:prestige_app/core/helper_functions/on_generate_routes.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const PrestigeWare());
}

class PrestigeWare extends StatelessWidget {
  const PrestigeWare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
      
    );
  }
}
  