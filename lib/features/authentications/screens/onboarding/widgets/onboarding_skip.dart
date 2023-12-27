import 'package:flutter/material.dart';
import 'package:my_eccommerce/features/authentications/controllers/onboarding_controller.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: LDeviceUtils.getappBarHeight(),
      right: LSizes.defaultSpace,
      child: TextButton(
        child: const Text('Skip'),
        onPressed: () => OnboardingScreenController.instance.skipPage(),
      ),
    );
  }
}