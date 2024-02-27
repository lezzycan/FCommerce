import 'package:flutter/material.dart';
import 'package:my_eccommerce/common/widgets/appbar.dart';
import 'package:my_eccommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';

class LHomeAppBar extends StatelessWidget {
  const LHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LAppBar(
      padding: EdgeInsets.symmetric(horizontal: LSizes.md),
      backgroundColor:LColors.primaryColor ,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text(LTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: LColors.grey),),
         Text(LTexts.homeAppbarsubTitle, style: Theme.of(context).textTheme.labelLarge!.apply(color: LColors.grey),)
        ],
      ),
      actions: [LCartCounterIcon(iconColor: LColors.textWhite, onPressed: (){})],
    );
  }
}