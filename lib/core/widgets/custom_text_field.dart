import 'package:flutter/material.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
    {super.key, required this.hintText,
     required this.textInputType,
    this.suffixIcon,
    this.onSaved,
    this.obscureText = false});

  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Cannot be empty. Please enter some text';
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintStyle: AppTextStyles.styleBold13.copyWith(
          color: const Color(0xFFB0B0B0),
          ),
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(9),
      borderSide: BorderSide(width: 1, color: const Color(0xFFE2E1E1)),
    );
  }
}
