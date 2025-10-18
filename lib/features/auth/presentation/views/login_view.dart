import 'package:flutter/material.dart';
import 'package:prestige_app/core/widgets/custom_appbar.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/login_view_body.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Login'),
      body: LoginViewBody(),
    );
  }
}
