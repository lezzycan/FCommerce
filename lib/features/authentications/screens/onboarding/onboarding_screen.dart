import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce/features/authentications/controllers/onboarding_controller.dart';
import 'package:my_eccommerce/features/authentications/screens/onboarding/widgets/onboarding_button.dart';
import 'package:my_eccommerce/features/authentications/screens/onboarding/widgets/onboarding_dot_indicator.dart';
import 'package:my_eccommerce/features/authentications/screens/onboarding/widgets/onboarding_page.dart';
import 'package:my_eccommerce/features/authentications/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingScreenController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
             onPageChanged: controller.updatePage,
            children: const [
              OnBoardingPage(
                image: LImageStrings.onboardingImage1,
                title: LTexts.onBoardingTitle1,
                subTitle: LTexts.onBoardingsubTitle1,
              ),
              OnBoardingPage(
                image: LImageStrings.onboardingImage2,
                title: LTexts.onBoardingTitle2,
                subTitle: LTexts.onBoardingsubTitle2,
              ),
              OnBoardingPage(
                image: LImageStrings.onboardingImage3,
                title: LTexts.onBoardingTitle3,
                subTitle: LTexts.onBoardingsubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingButton(),
        ],
      ),
    );
  }
}
