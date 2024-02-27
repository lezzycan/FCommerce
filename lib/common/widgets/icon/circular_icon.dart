import 'package:flutter/material.dart';

class LCircularIcon extends StatelessWidget {
  const LCircularIcon({
    super.key,
   
    this.widht,
    this.height,
    this.size,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

 
  final double? widht, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor,),
      child: IconButton(
        icon:  Icon(icon, color: color,size: size,),
        onPressed: onPressed,
      ),
    );
  }
}
