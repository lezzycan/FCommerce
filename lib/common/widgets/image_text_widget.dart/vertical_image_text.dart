import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class LVerticalImage extends StatelessWidget {
  const LVerticalImage({
    super.key,
    required this.image,
    required this.title,
    this.textColor = LColors.textWhite,
    this.backgroundColor = LColors.textWhite,
    required this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: LSizes.sm),
        child: Column(
          children: [
            Container(
              width: 56.w,
              height: 56.w,
              padding: const EdgeInsets.all(LSizes.md),
              decoration: BoxDecoration(
                  color: backgroundColor ??
                      (isDark ? LColors.textWhite : LColors.black),
                  borderRadius: BorderRadius.circular(100)),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: isDark ? LColors.textWhite : LColors.black,
              ),
            ),
            const SizedBox(
              height: LSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              //  width: 55.w,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
