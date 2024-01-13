import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_eccommerce/common/widgets/image_text_widget.dart/vertical_image_text.dart';
import 'package:my_eccommerce/utils/constants/image_strings.dart';

class LHomeCategories extends StatelessWidget {
  const LHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, index) {
            return LVerticalImage(
              title: 'Shoes',
              image: LImageStrings.shoeIcon,
              onTap: () {},
            );
          }),
    );
  }
}