import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';

class LShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: LColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,spreadRadius: 7,offset: const Offset(0, 2),
  );
}
