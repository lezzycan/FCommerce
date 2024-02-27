import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';
import 'package:my_eccommerce/utils/helpers/helper_functions.dart';

class LCircularImage extends StatelessWidget {
  const LCircularImage({
    super.key,
    
    this.fit  = BoxFit.cover,
     this.isNetworkImage  = false,
    required this.image,
    this.overlayColor,
    this.backgroundColor,
    this.width =  36,
     this.height  = 36,
   this.padding = LSizes.sm,
  });

  
  final BoxFit? fit;
  final bool isNetworkImage;
  final String image;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (LHelperFunctions.isDarkMode(context) ? LColors.black : LColors.textWhite),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image)  : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}
