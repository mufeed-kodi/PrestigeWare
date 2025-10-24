import 'package:flutter/material.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/custom_checkbox.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CustomCheckBox(
        onChecked: (value) {
          setState(() {
            isTermsAccepted = value;
            widget.onChanged(value);
          });
        },
        isChecked: isTermsAccepted,
      ),
      SizedBox(width: 16,),
      Expanded(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan( text: 'By creating an account, you are accepting our',
              style: AppTextStyles.styleSemiBold13.copyWith(color: Colors.grey),),
              TextSpan(text: '     ', style: AppTextStyles.styleSemiBold13,),
              TextSpan( text: 'Terms and Conditions.',
              style: AppTextStyles.styleSemiBold14.copyWith(color: AppColors.primaryLightColor),),  
            ]
          )
         ),
      )
      ]);
  }
}
