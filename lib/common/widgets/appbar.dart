import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LAppBar(
      {super.key,
      this.showBackArrow = false,
      this.title,
      this.leadingIcon,
      this.actions,
      this.leadingOnPress,
      this.centerTitle,
      this.backgroundColor, required this.padding});

  final bool showBackArrow;
  final Widget? title;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPress;
  final bool? centerTitle;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null
                ? IconButton(onPressed: leadingOnPress, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
        centerTitle: centerTitle ?? false,
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
