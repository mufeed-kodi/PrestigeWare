import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prestige_app/constants.dart';
import 'package:prestige_app/core/helper_functions/build_error_bar.dart';
import 'package:prestige_app/core/widgets/custom_button.dart';
import 'package:prestige_app/core/widgets/custom_text_field.dart';
import 'package:prestige_app/core/widgets/password_field.dart';
import 'package:prestige_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName, email, password;
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                onSaved: (value) {
                  userName = value!;
                },
                hintText: 'Full Name',
                textInputType: TextInputType.name,
              ),
              SizedBox(height: 16),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(height: 16),
              TermsAndConditions(
                onChanged: (value){
                  isTermsAccepted = value;
                },
              ),
              SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    if (isTermsAccepted) {
                      context.read<SignupCubit>().createUserWithEmailAndPassword(
                        email: email,
                        password: password,
                        name: userName,
                      );
                    } else {
                      buildErrorBar(context, 'Please accept the Terms and Conditions.');
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'Create New Account',
              ),
              SizedBox(height: 16),
              HaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}

