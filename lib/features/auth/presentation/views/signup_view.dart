import 'package:flutter/material.dart';
import 'package:prestige_app/core/widgets/custom_appbar.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  
  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Create Account'),
      body: SignupViewBody(),
    );
  }
}