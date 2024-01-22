import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_eccommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:my_eccommerce/common/widgets/images/rounded_images.dart';
import 'package:my_eccommerce/features/shop/controllers/home_controllers.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';

class LPromoSlider extends StatelessWidget {
  const LPromoSlider({
    super.key, required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final contrl = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((e) =>  LRoundedImage(imageUrl: e)).toList(),
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  contrl.updatePageIndicatorIndex(index)),
        ),
        const SizedBox(
          height: LSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (var i = 0; i < banners.length; i++)
                LCircularContainer(
                  margin: EdgeInsets.only(right: 10.r),
                  backgroundColor: contrl.carouselCurrentIndex == i
                      ? LColors.primaryColor
                      : LColors.grey,
                  width: 18.w,
                  height: 5.w,
                ),
            ],
          ),
        )
      ],
    );
  }
}
