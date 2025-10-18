import 'package:flutter/material.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';
import 'package:prestige_app/features/auth/presentation/views/signup_view.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account? ', style: AppTextStyles.styleSemiBold13),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignupView.routeName);
          },
          child: Text(
            'Create Account.',
            style: AppTextStyles.styleSemiBold14.copyWith(
              color: AppColors.primaryLightColor,
            ),
          ),
        ),
      ],
    );
  }
}
