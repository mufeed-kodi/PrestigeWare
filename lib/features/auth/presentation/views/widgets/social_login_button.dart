import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, required this.image, required this.title, required this.onPressed});

  final String image;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFE4E4E4)), 
            borderRadius: BorderRadius.circular(16)),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity
          ),
          leading: SvgPicture.asset(image),
          title: 
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.styleSemiBold16,
          ),
        ),
      ),
    );
  }
}