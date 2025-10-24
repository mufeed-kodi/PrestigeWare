import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:prestige_app/core/helper_functions/build_error_bar.dart';
import 'package:prestige_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupFailure) {
          buildErrorBar(context, state.message);
        }
        
        else if (state is SignupSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Account created successfully')));
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          
          inAsyncCall: state is SignupLoading ? true : false,
          child: const SignupViewBody()
          );
      },
    );
  }
}
