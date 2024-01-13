import 'package:flutter/material.dart';

class LSectionHeading extends StatelessWidget {
  const LSectionHeading({
    super.key, this.textColor, this.onPressed, this.showActionButton = false, required this.title,  this.buttonTitle = "View All",
  });
  final Color? textColor;
  final VoidCallback? onPressed;
  final bool? showActionButton;
  final String title, buttonTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      if( showActionButton!)  TextButton(onPressed: () {}, child:  Text(buttonTitle)) 
      ],
    );
  }
}