import 'package:flutter/material.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.grey.shade400,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            ' OR ',
            style: AppTextStyles.styleSemiBold14.copyWith(color: AppColors.mainDarkBlue),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Colors.grey.shade400,
          ),
        )
      ],
    );
  }
}