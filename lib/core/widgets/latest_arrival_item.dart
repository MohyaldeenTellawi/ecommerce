import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/core/utils/assets_manager.dart';
import 'package:shop_ecommerce/core/widgets/custom_floating_button.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';

class LatestArivalItem extends StatelessWidget {
  const LatestArivalItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
      child: SizedBox(
        width: size.width * .6,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AssetsManager.product,
              width: size.width * 0.22,
              height: size.width * 0.23,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(
                    label: 'Title' * 10,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      CustomFloatingButton(
                          heroTag: 'heart',
                          backgroundColor: AppColors.cRed.withOpacity(0.75),
                          onPressed: () {},
                          icon: FontAwesomeIcons.heart),
                      const SizedBox(width: 50),
                      CustomFloatingButton(
                          heroTag: 'cart',
                          backgroundColor:
                              AppColors.darkPrimary.withOpacity(0.5),
                          onPressed: () {},
                          icon: FontAwesomeIcons.cartPlus),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const TitleText(
                    fontWeight: FontWeight.w500,
                    fontsize: 12,
                    label: 'Price:160',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
