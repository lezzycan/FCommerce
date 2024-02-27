import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_eccommerce/utils/constants/colors.dart';
import 'package:my_eccommerce/utils/constants/sizes.dart';

class LRoundedImage extends StatelessWidget {
  const LRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = LSizes.md, this.imageColor,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  final Color? imageColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            color: imageColor,
            image: isNetworkImage
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    // placeholder: (context, url) => const CircularProgressIndicator(),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                                value: downloadProgress.progress),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ) as ImageProvider
                : AssetImage(
                    imageUrl,
                  ),
          ),
        ),
      ),
    );
  }
}
