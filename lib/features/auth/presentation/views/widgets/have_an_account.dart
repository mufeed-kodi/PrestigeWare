import 'package:flutter/material.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account? ', style: AppTextStyles.styleSemiBold13),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'Login,',
            style: AppTextStyles.styleSemiBold14.copyWith(
              color: AppColors.primaryLightColor,
            ),
          ),
        ),
      ],
    );
  }
}
