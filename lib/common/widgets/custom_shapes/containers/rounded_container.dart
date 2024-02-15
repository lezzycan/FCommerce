import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';

class LRoundedContainer extends StatelessWidget {
  const LRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.radius = LSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.margin,
    this.borderColor = LColors.borderPrimary,
    this.showBorder = false,
    this.backgroundColor  = LColors.textWhite,
  });
  final double? height, width;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final bool showBorder;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          border: showBorder ? Border.all(color: borderColor) : null),
          child: child,
    );
  }
}
