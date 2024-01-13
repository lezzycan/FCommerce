import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/device/device_utility.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class SearchbarContainer extends StatelessWidget {
  const SearchbarContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: LDeviceUtils.getScreenWidth(),
        padding: const EdgeInsets.all(LSizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? isDark
                    ? LColors.dark
                    : LColors.textWhite
                : Colors.transparent,
            border: showBorder ? Border.all(color: LColors.grey) : null,
            borderRadius: BorderRadius.circular(LSizes.cardRadiusLg)),
        child: Row(
          children: [
            Icon(
              icon,
              color: LColors.darkerGrey,
            ),
            const SizedBox(
              width: LSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
