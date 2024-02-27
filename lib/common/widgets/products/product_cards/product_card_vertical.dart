import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/common/styles/shadow_style.dart';
import 'package:my_eccommerce/common/texts/brand_title_text_with_verified_icon.dart';
import 'package:my_eccommerce/common/texts/product_title_text.dart';
import 'package:my_eccommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_eccommerce/common/widgets/icon/circular_icon.dart';
import 'package:my_eccommerce/common/widgets/images/rounded_images.dart';
import 'package:my_eccommerce/common/widgets/products/product_cards/product_price_Text.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class LProductCardVertical extends StatelessWidget {
  const LProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: () {},
      child: Container(
        width: 180.w,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [LShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(LSizes.productImageRadius),
            color: dark ? LColors.darkerGrey : LColors.textWhite),
        child: Column(
          children: [
            LRoundedContainer(
              // height: 160.h,
              padding: const EdgeInsets.all(LSizes.sm),
              backgroundColor:
                  dark ? LColors.dark : LColors.grey.withOpacity(0.5),
              child: Stack(children: [
                const LRoundedImage(
                  imageUrl: LImageStrings.productImage1,
                  applyImageRadius: true,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 5.sp,
                  child: LRoundedContainer(
                    radius: LSizes.sm,
                    backgroundColor: LColors.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: LSizes.sm, vertical: LSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: LColors.black),
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    top: -7.sp,
                    child: const LCircularIcon(
                      color: Colors.red,
                      icon: Iconsax.heart5,
                    )),
              ]),
            ),
            const SizedBox(
              height: LSizes.spaceBtwItems / 2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: LSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: LSizes.spaceBtwItems / 2,
                  ),
                  LBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: LSizes.sm),
                  child: LProductPriceText(
                    price: '35.0',
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: LColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(LSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(LSizes.productImageRadius))),
                  child: const SizedBox(
                    width: LSizes.iconLg * 1.2,
                    height: LSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: LColors.textWhite,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
