import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shop_ecommerce/core/controllers/theme_controller.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/core/utils/assets_manager.dart';
import 'package:shop_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:shop_ecommerce/core/widgets/custom_cart_checkout.dart';
import 'package:shop_ecommerce/core/widgets/custom_cart_item.dart';
import 'package:shop_ecommerce/core/widgets/custom_empty_cart.dart';
import 'package:shop_ecommerce/core/widgets/subtitle_text.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    ThemeController theme = Provider.of<ThemeController>(context);
    return isEmpty
        ? Scaffold(
            body: CustomEmptyView(
                isCart: true,
                imagePath: AssetsManager.shoppingBasket,
                title1: 'Whoops!',
                title2: 'Your cart is empty',
                subtitle:
                    'Looks like you didnt added anything to your cart yet \n go ahead and start shopping now'))
        : Scaffold(
            bottomSheet: const CustomCartCheckOut(),
            appBar: CustomAppBar(
                theme: theme,
                label: 'My Cart',
                actionWidget: IconButton(
                  icon: const Icon(FontAwesomeIcons.trashCan),
                  onPressed: () {
                    setState(() {
                      isEmpty = true;
                    });
                  },
                  color: AppColors.cRed,
                )),
            body: ListView.separated(
              separatorBuilder: (context, index) {
                return const Padding(
                    padding: EdgeInsetsDirectional.only(start: 30, end: 30),
                    child: Divider(thickness: 2));
              },
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomCartItem(
                  itemImage: AssetsManager.shoes,
                  itemPrice: 'Price: \$200',
                  theme: theme,
                  itemName: 'Nike Air Max 720',
                  onPressed: () {
                    showModalBottomSheet(
                      elevation: 0,
                      useSafeArea: true,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      context: context,
                      builder: (context) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsetsDirectional.only(start: 20),
                              child: TitleText(label: 'Quantity', fontsize: 20),
                            ),
                            Expanded(
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 10);
                                },
                                itemCount: 15,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      log('Selected quantity: $index');
                                    },
                                    child: SubTitleText(
                                        label: '${index + 1}',
                                        textAlign: TextAlign.center),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
          );
  }
}
