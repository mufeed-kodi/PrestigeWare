import 'package:flutter/material.dart';
import 'package:prestige_app/constants.dart';
import 'package:prestige_app/core/utils/app_colors.dart';
import 'package:prestige_app/core/widgets/custom_button.dart';
import 'package:prestige_app/features/auth/presentation/views/login_view.dart';
import 'package:prestige_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ✅ The page view section
        Expanded(
          child: OnBoardingPageview(
            pageController: pageController,
          ),
        ),

        // ✅ Replaced DotsIndicator with conditional dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            Color color;
            if (currentPage == 0) {
              color = index == 0
                  ? AppColors.primaryColor
                  : AppColors.primaryColorWithOpacity;
            } else if (currentPage == 1) {
              color = index <= 1
                  ? AppColors.primaryColor
                  : AppColors.primaryColorWithOpacity;
            } else {
              color = AppColors.primaryColor;
            }

            return AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentPage == index ? 15 : 10, // ⭐ Enlarges active dot
              height: currentPage == index ? 15 : 10, // ⭐ Same for height
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            );
          }),
        ),

        const SizedBox(height: 30),

        // ✅ Show button only on the last page
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: CustomButton(
              onPressed: () {
                    Navigator.of(context).pushReplacementNamed(
                      LoginView.routeName,
                    );
              },
              text: 'Start Now',
            ),
          ),
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}
