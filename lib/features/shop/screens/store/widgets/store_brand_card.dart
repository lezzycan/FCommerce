import 'package:flutter/material.dart';
import 'package:my_eccommerce/common/texts/brand_title_text_with_verified_icon.dart';
import 'package:my_eccommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_eccommerce/common/widgets/images/circular_image.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/enums.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';

class LBrandCard extends StatelessWidget {
  const LBrandCard({
    super.key,
    required this.isDark, required this.showBorder,
  });

  final bool isDark;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: LRoundedContainer(
        padding: const EdgeInsets.all(LSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: LCircularImage(
                isNetworkImage: false,
                image: LImageStrings.clothIcon,
                overlayColor: isDark ? Colors.white : LColors.dark,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(
              width: LSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
