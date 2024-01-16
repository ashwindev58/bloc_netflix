
import 'package:flutter/material.dart';

import '../../core/Colors/colors.dart';

class CustomIconWithBottomLabelButtonWidget extends StatelessWidget {
  final String tittle;
  final IconData icon;

  final double? iconSize;

  final TextStyle? textStyle;
  const CustomIconWithBottomLabelButtonWidget({
    super.key,
    required this.tittle,
    required this.icon,
    this.iconSize,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: kColorWhite,
                size: iconSize,
              )),
          Text(
            tittle,
            style: textStyle,
          )
        ],
      ),
    );
  }
}
