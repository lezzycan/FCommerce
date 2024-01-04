import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/text_strings.dart';

class LLoginDivider extends StatelessWidget {
  const LLoginDivider({
    super.key,
    required this.isDark, required this.text,
  });
  final String text;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: isDark ? LColors.darkGrey : LColors.grey,
          thickness: 0.5,
        )),
        Text(
           text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Expanded(
            child: Divider(
          color: isDark ? LColors.darkGrey : LColors.grey,
          thickness: 0.5,
        ))
      ],
    );
  }
}
