import 'package:flutter/material.dart';
import 'package:prestige_app/constants.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'package:prestige_app/core/utils/app_images.dart';
import 'package:prestige_app/core/utils/app_text_styles.dart';
import 'package:prestige_app/core/widgets/custom_button.dart';
import 'package:prestige_app/core/widgets/custom_text_field.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:prestige_app/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                hintText: 'Email',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16,),
              CustomTextFormField(
                suffixIcon: Icon(Icons.remove_red_eye, color: Colors.grey,),
                hintText: 'Password',
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?',
                   style: AppTextStyles.styleSemiBold13.copyWith(
                    color: AppColors.primaryLightColor),
                    ),
                    SizedBox(width: 24,)
                ],
              ),
              SizedBox(height: 32,),
              CustomButton(onPressed: (){}, text:  'Login',),
              SizedBox(height: 32,),
              DontHaveAnAccount(),
              SizedBox(height: 32,),
      
              OrDivider(),
      
              SizedBox(height: 20,),
      
              SocialLoginButton(
                onPressed: (){},
                image: Assets.imagesGoogleIcon,
                title: 'Sign in with Google',
              ),
      
              SizedBox(height: 20,),
      
              SocialLoginButton(
                onPressed: (){},
                image: Assets.imagesXIcon,
                title: 'Sign in with  X  ',
              ),
      
              SizedBox(height: 20,),
      
              SocialLoginButton(
                onPressed: (){},
                image: Assets.imagesFbIcon,
                title: 'Sign in with FaceBook',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

