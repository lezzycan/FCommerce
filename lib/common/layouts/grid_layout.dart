import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';

class LGridLayout extends StatelessWidget {
  const LGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: LSizes.gridViewSpacing,
            crossAxisSpacing: LSizes.gridViewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
