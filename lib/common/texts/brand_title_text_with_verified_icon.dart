import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/common/texts/brand_title_text.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/enums.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';

class LBrandTitleWithVerifiedIcon extends StatelessWidget {
  const LBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = LColors.primaryColor ,
    this.textAlign,
     this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: LBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines, textAlign: textAlign, brandTextSize: brandTextSize,
        )),
       
        const SizedBox(
          width: LSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: LColors.primaryColor,
          size: LSizes.iconXs,
        )
      ],
    );
  }
}
