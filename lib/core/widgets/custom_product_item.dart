import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/core/utils/assets_manager.dart';
import 'package:shop_ecommerce/core/widgets/custom_floating_button.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    // ThemeController theme = Provider.of<ThemeController>(context);
    return Column(
      children: [
        Image.asset(AssetsManager.product,
            filterQuality: FilterQuality.high,
            width: double.infinity,
            height: size.width * .25),
        Row(
          children: [
            Flexible(
              child: TitleText(
                  label: 'Nike Air Max 720' * 10, maxLines: 3, fontsize: 18),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Flexible(
          child: TitleText(
              label: 'Price: 120\$' * 5,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.normal,
              fontsize: 15),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(width: 5),
            Flexible(
                child: CustomFloatingButton(
                    heroTag: 'favorite${UniqueKey()}',
                    backgroundColor: AppColors.cRed.withOpacity(0.7),
                    onPressed: () {},
                    icon: FontAwesomeIcons.heart)),
            const Spacer(),
            Flexible(
              child: CustomFloatingButton(
                heroTag: 'cart${UniqueKey()}',
                backgroundColor: AppColors.darkPrimary.withOpacity(0.6),
                onPressed: () {},
                icon: FontAwesomeIcons.cartPlus,
              ),
            ),
            const Spacer(),
            Flexible(
              child: CustomFloatingButton(
                heroTag: 'info${UniqueKey()}',
                backgroundColor: AppColors.cGreen.withOpacity(0.5),
                onPressed: onPressed,
                icon: FontAwesomeIcons.info,
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
      ],
    );
  }
}
