import 'package:flutter/material.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';

import 'title_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed,
      this.padding,
      this.borderRadius,
      required this.backgroundColor});

  final IconData icon;
  final String label;
  final void Function() onPressed;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: FilledButton.icon(
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 7),
            ),
            backgroundColor: backgroundColor,
            foregroundColor: AppColors.cWhite,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onPressed: onPressed,
          icon: Icon(icon),
          label: TitleText(label: label)),
    );
  }
}
