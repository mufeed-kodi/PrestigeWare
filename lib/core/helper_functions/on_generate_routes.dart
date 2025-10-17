import 'package:flutter/material.dart';
import 'package:prestige_app/features/auth/presentation/views/login_view.dart';
import 'package:prestige_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:prestige_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    default:
      return MaterialPageRoute(builder: (context) => const Placeholder());
  }
}