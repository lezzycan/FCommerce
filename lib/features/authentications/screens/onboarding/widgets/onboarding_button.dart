import 'package:flutter/material.dart';
import 'package:my_eccommerce/features/authentications/controllers/onboarding_controller.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/device/device_utility.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final isDark = LHelperFunctions.isDarkMode(context);
    return Positioned(
        right: LSizes.defaultSpace,
        bottom: LDeviceUtils.getBottomNavigationBarHeight() / 1.5,
        child: ElevatedButton(
          
          style: ElevatedButton.styleFrom(shape: const CircleBorder(
            
          ),
          backgroundColor:isDark ? LColors.buttonPrimary : Colors.black
          ),
            onPressed: () => OnboardingScreenController.instance.nextPage(),
            child: const Icon(
              Icons.arrow_forward_ios,
             // color: Colors.white,
              
            ),),);
  }
}