import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';

class LCircularContainer extends StatelessWidget {
  const LCircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.margin,
    this.backgroundColor = LColors.textWhite,
  });
  final double? height, width, radius, padding;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!), color: backgroundColor),
    );
  }
}
