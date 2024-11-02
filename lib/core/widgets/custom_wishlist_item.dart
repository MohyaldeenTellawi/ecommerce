import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:shop_ecommerce/core/widgets/custom_floating_button.dart';

import '../utils/app_colors.dart';
import '../utils/assets_manager.dart';
import 'title_text.dart';

class CustomWishListRecentlyItem extends StatelessWidget {
  const CustomWishListRecentlyItem({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Image.asset(AssetsManager.product,
            filterQuality: FilterQuality.high,
            width: size.width * .2,
            height: size.width * .2),
        Row(
          children: [
            Flexible(
              child: TitleText(
                  label: 'Nike Air Max 720' * 10, maxLines: 3, fontsize: 18),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            CustomFloatingButton(
                backgroundColor: AppColors.cGreen.withOpacity(0.7),
                onPressed: onPressed,
                icon: FontAwesomeIcons.info,
                heroTag: 'info${UniqueKey()}'),
            const SizedBox(width: 5),
            CustomFloatingButton(
                backgroundColor: AppColors.cRed.withOpacity(0.7),
                onPressed: () {},
                icon: FontAwesomeIcons.heartCircleXmark,
                heroTag: 'removeFavorite${UniqueKey()}'),
          ],
        ),
      ],
    );
  }
}
