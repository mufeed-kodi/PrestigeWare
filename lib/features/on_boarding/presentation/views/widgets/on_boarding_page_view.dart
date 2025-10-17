import 'package:flutter/material.dart';
import 'package:prestige_app/core/utils/app_images.dart';
import 'package:prestige_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageviewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BGimage,
          subtitle:
              'Discover the latest electronics effortlessly and find exactly what you need.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Prestige',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFE7062),
                  fontSize: 24,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Ware',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF09005D),
                  fontSize: 24,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w900,
                ),
              ),
              
            ],
          ),
        ),
        PageviewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BGimage,
          subtitle:
              'Shop Confidently with the best sales and exclusive discounts. ',
          title: Text(
            'Amazing Offers & Deals ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        PageviewItem(
          isVisible: false,
          image: Assets.imagesPageViewItem3Image,
          backgroundImage: Assets.imagesPageViewItem3BGimage,
          subtitle:
              'Receive your orders quickly and safely, straight to your door.',
          title: Text(
            'Fast & Reliable Delivery',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
