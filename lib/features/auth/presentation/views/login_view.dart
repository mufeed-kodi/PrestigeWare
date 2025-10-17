import 'package:flutter/material.dart';
import 'package:prestige_app/features/auth/presentation/views/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Login',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w900,
          ),
        )
      ),
      body: const LoginViewBody()
    );
  }
}
