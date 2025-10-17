import 'package:flutter/material.dart';
import 'package:prestige_app/features/auth/presentation/views/login_view_body.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new
          ),
        centerTitle: true,
        title: const Text(
          'Login',
          style: AppTextStyles.styleBold19
        )
      ),
      body: const LoginViewBody()
    );
  }
}
