import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'package:prestige_app/features/auth/presentation/views/login_view.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title, 
    required this.isVisible,
  });

  final String image;
  final String backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill),
              ),
              Positioned.fill(
                bottom: -20,
                child: Align(
                  alignment: Alignment.bottomCenter, // or center, etc.
                  child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5, // 70% of screen width
                  child: SvgPicture.asset(
                  image,
                  fit: BoxFit.contain,),
                  ),
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(
                      LoginView.routeName,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: 
                    Text('Skip',
                     style: 
                     const TextStyle(
                      color: Color(0xFF09005D),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      const SizedBox(height: 60,),
      title,
      const SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: Text(subtitle,
         textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF09005D),
             fontSize: 16,
              fontFamily: 'DM Sans',
               fontWeight: FontWeight.w400
               ),
            ),
      ),
      ],
    );
  }
}