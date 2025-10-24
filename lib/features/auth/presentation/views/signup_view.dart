import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prestige_app/core/services/get_it_service.dart';
import 'package:prestige_app/core/widgets/custom_appbar.dart';
import 'package:prestige_app/features/auth/domain/repos/auth_repo.dart';
import 'package:prestige_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'Create Account'),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
