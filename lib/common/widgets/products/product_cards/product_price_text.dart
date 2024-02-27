// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LProductPriceText extends StatelessWidget {
  const LProductPriceText(
      {this.currencySign = '\$',
      required this.price,
      this.isLarge = false,
      this.maxLines = 1,
      this.lineThrough = false,
      super.key});

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;
  @override
  Widget build(BuildContext context) {
    return Text(currencySign + price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null));
  }
}
