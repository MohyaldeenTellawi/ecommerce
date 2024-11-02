import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/core/widgets/custom_floating_button.dart';
import 'package:shop_ecommerce/core/widgets/subtitle_text.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';

import '../controllers/theme_controller.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem(
      {super.key,
      required this.theme,
      required this.itemImage,
      required this.itemName,
      required this.itemPrice,
      required this.onPressed});
  final ThemeController theme;
  final String itemImage, itemName, itemPrice;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return FittedBox(
      child: IntrinsicWidth(
        child: Container(
          margin: const EdgeInsetsDirectional.only(top: 10, start: 10, end: 10),
          child: Row(
            children: [
              Image.asset(
                  height: size.height * 0.1,
                  width: size.width * 0.3,
                  itemImage),
              const SizedBox(width: 5),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitleText(
                            label: itemName,
                            fontsize: 20,
                            maxLines: 2,
                          ),
                        ),
                        const Spacer(),
                        CustomFloatingButton(
                            backgroundColor: AppColors.cRed.withOpacity(0.7),
                            onPressed: () {},
                            icon: FontAwesomeIcons.xmark,
                            heroTag: 'removeFromCart${UniqueKey()}'),
                        SizedBox(width: size.width * 0.05)
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        SubTitleText(
                          fontsize: 20,
                          label: itemPrice,
                        ),
                        const Spacer(),
                        OutlinedButton.icon(
                            onPressed: onPressed,
                            icon: const Icon(FontAwesomeIcons.arrowDown),
                            label: const Text('Qty: 1')),
                        SizedBox(width: size.width * 0.05),
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
