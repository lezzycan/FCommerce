import 'package:flutter/material.dart';
import 'package:my_eccommerce/common/styles/l_spacing_style.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: LHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: LSizes.spaceBtwSections,),

              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: LSizes.spaceBtwItems,),
               Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
                     const SizedBox(height: LSizes.spaceBtwSections,),
                     SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed,
                      child: const Text(LTexts.tContinue)),)
            ],
          ),
        ),
      ),
    );
  }
}
