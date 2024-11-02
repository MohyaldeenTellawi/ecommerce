import 'package:flutter/material.dart';
import 'package:shop_ecommerce/core/controllers/theme_controller.dart';
import '../utils/app_colors.dart';
import '../utils/assets_manager.dart';
import 'custom_animated_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.theme,
      this.centerTitle,
      this.leading,
      required this.label,
      this.actionWidget});

  final ThemeController theme;
  final String label;
  final Widget? actionWidget;
  final bool? centerTitle;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomAnimatedText(
        label: label,
        baseColor: AppColors.cRed.withOpacity(0.8),
        highlightColor:
            theme.getIsDarkMode ? AppColors.cBeg : AppColors.lightPrimary,
      ),
      centerTitle: centerTitle ?? false,
      leading: leading ??
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 15),
            child: Image.asset(AssetsManager.shoppingCart),
          ),
      actions: [
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 15),
          child: actionWidget ?? const SizedBox(),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
