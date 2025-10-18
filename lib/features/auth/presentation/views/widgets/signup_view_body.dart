import 'package:flutter/material.dart';
import 'package:prestige_app/constants.dart';
import 'package:prestige_app/core/widgets/custom_button.dart';
import 'package:prestige_app/core/widgets/custom_text_field.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(height: 24,),
            CustomTextFormField(hintText: 'Full Name', textInputType: TextInputType.name,),
            SizedBox(height: 16,),
            CustomTextFormField(hintText: 'Email', textInputType: TextInputType.emailAddress,),
            SizedBox(height: 16,),
            CustomTextFormField(
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey,),
                  hintText: 'Password',
                  textInputType: TextInputType.visiblePassword,
                ),
            SizedBox(height: 16,),
            TermsAndConditions(),
            SizedBox(height: 30,),
            CustomButton(onPressed: (){}, text: 'Create New Account',),
            SizedBox(height: 16,),
            HaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
