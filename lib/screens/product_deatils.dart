import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shop_ecommerce/core/controllers/theme_controller.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/core/utils/assets_manager.dart';
import 'package:shop_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:shop_ecommerce/core/widgets/custom_button.dart';
import 'package:shop_ecommerce/core/widgets/custom_floating_button.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';

class ProductDeatilsScreen extends StatefulWidget {
  const ProductDeatilsScreen({super.key});

  @override
  State<ProductDeatilsScreen> createState() => _ProductDeatilsScreenState();
}

class _ProductDeatilsScreenState extends State<ProductDeatilsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final ThemeController theme = Provider.of<ThemeController>(context);
    return Scaffold(
      appBar: CustomAppBar(
          actionWidget: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.cartShopping)),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          centerTitle: true,
          theme: theme,
          label: 'Nike Air Max 720'),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Image.asset(
            AssetsManager.product,
            filterQuality: FilterQuality.high,
            width: double.infinity,
            height: size.height * .3,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: TitleText(
                          maxLines: 2,
                          label: 'Nike Air Max 720',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 100),
                      TitleText(
                        label: 'Price: 120\$',
                        fontsize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomFloatingButton(
                          backgroundColor: AppColors.cRed.withOpacity(0.7),
                          onPressed: () {},
                          icon: FontAwesomeIcons.heart,
                          heroTag: 'favorite${UniqueKey()}'),
                      CustomButton(
                          borderRadius: 30,
                          icon: FontAwesomeIcons.cartPlus,
                          label: '    Add to Cart',
                          onPressed: () {},
                          backgroundColor: AppColors.cBlue),
                    ],
                  ),
                  const Divider(height: 30, indent: 40, endIndent: 40),
                  const TitleText(
                      label: 'About this item',
                      fontWeight: FontWeight.w700,
                      fontsize: 15),
                  const SizedBox(height: 10),
                  TitleText(
                      label: 'Nike Air Max 720' * 20,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 10),
                  const Divider(height: 30, indent: 40, endIndent: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
