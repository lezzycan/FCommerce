import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class LLoginSocialButton extends StatelessWidget {
  const LLoginSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: LColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: LSizes.iconMd,
                  height: LSizes.iconMd,
                  image: AssetImage(LImageStrings.googleLogo))),
        ),
        const SizedBox(
          width: LSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: LColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: LSizes.iconMd,
                  height: LSizes.iconMd,
                  image: AssetImage(LImageStrings.facebookLogo))),
        ),
        const SizedBox(
          width: LSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: LColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon:  Image(
                width: LSizes.iconMd,
                height: LSizes.iconMd,
                image: const AssetImage(
                  LImageStrings.appleLogo,
                ),
                color: isDark ?  LColors.light : LColors.black,
              )),
        ),
      ],
    );
  }
}
