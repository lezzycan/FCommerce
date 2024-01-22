import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_eccommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:my_eccommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:my_eccommerce/common/widgets/section_header.dart';
import 'package:my_eccommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:my_eccommerce/common/widgets/searchbar.dart';
import 'package:my_eccommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:my_eccommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LCurvedEdgeWidget(
              child: Container(
                padding: const EdgeInsets.all(0),
                color: LColors.primaryColor,
                child: SizedBox(
                  height: 400.w,
                  child: Stack(
                    children: [
                      Positioned(
                        top: -150.h,
                        right: -250.w,
                        child: LCircularContainer(
                          height: 400.w,
                          width: 400.w,
                          backgroundColor: LColors.textWhite.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        top: 100.h,
                        right: -300.w,
                        height: 400.w,
                        width: 400.w,
                        child: LCircularContainer(
                          backgroundColor: LColors.textWhite.withOpacity(0.1),
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LHomeAppBar(),
                          SizedBox(
                            height: LSizes.spaceBtwSections,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: LSizes.defaultSpace),
                            child: SearchbarContainer(
                              text: 'Search in Store',
                            ),
                          ),
                          SizedBox(
                            height: LSizes.spaceBtwSections,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: LSizes.defaultSpace),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LSectionHeading(
                                  title: LTexts.popularCategories,
                                  textColor: LColors.textWhite,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: LSizes.spaceBtwItems,
                          ),
                          LHomeCategories()
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(LSizes.md),
              child: LPromoSlider(
               banners:[ 
                LImageStrings.promoBanner1,
                 LImageStrings.promoBanner2,
                  LImageStrings.promoBanner3,
               ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

