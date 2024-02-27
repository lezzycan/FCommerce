import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_eccommerce/common/layouts/grid_layout.dart';
import 'package:my_eccommerce/common/texts/brand_title_text_with_verified_icon.dart';
import 'package:my_eccommerce/common/widgets/appbar.dart';
import 'package:my_eccommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_eccommerce/common/widgets/images/circular_image.dart';
import 'package:my_eccommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:my_eccommerce/common/widgets/searchbar.dart';
import 'package:my_eccommerce/common/widgets/section_header.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/enums.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = LHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: LAppBar(
        padding: EdgeInsets.zero,
        title: const Text('Store'),
        actions: [LCartCounterIcon(iconColor: Colors.black, onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 270.h,
                backgroundColor: isDark ? LColors.black : LColors.textWhite,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(LSizes.md),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: LSizes.spaceBtwItems,
                      ),

                      ///-- Search bar
                      const SearchbarContainer(
                        showBackground: false,
                        showBorder: true,
                        text: 'Search in Store',
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: LSizes.spaceBtwSections,
                      ),

                      /// -- Featured Brands
                      LSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                        showActionButton: true,
                      ),
                      const SizedBox(
                        height: LSizes.spaceBtwItems / 1.5,
                      ),

                      LGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 50.h,
                          itemBuilder: (_, index) {
                            return LBrandCard(isDark: isDark, show);
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}

