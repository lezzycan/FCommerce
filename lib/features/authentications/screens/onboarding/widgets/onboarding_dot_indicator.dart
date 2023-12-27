import 'package:flutter/material.dart';
import 'package:my_eccommerce/features/authentications/controllers/onboarding_controller.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/device/device_utility.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    final controller = OnboardingScreenController.instance;
    return Positioned(
        bottom: LDeviceUtils.getBottomNavigationBarHeight(),
        left: LSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          effect: ExpandingDotsEffect(
              dotHeight: 6.0,
              activeDotColor: isDark ? LColors.light : LColors.dark),
        ));
  }
}
