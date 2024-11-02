import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton(
      {super.key,
      required this.backgroundColor,
      required this.onPressed,
      required this.icon,
      required this.heroTag});

  final Color backgroundColor;
  final void Function() onPressed;
  final IconData icon;
  final String heroTag;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      heroTag: heroTag,
      elevation: 10,
      shape: const BeveledRectangleBorder(),
      foregroundColor: AppColors.cWhite,
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      child: Icon(icon, size: 20),
    );
  }
}
