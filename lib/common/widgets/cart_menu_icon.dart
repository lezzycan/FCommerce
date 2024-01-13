import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';

class LCartCounterIcon extends StatelessWidget {
  const LCartCounterIcon(
      {super.key, required this.iconColor, required this.onPressed});
  final Color iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
            right: 0,
            child: Container(
              width: 18.w,
              height: 18.w,
              decoration: BoxDecoration(
                color: LColors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: LColors.textWhite, fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}
