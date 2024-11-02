import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:shop_ecommerce/core/widgets/custom_wishlist_item.dart';

import '../core/controllers/theme_controller.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController theme = Provider.of<ThemeController>(context);
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: CustomAppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          theme: theme,
          label: 'Wishlist'),
      body: GridView.builder(
        padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: size.aspectRatio * 1.75,
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemBuilder: (context, index) {
          return CustomWishListRecentlyItem(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const ProductDeatilsScreen()));
            },
          );
        },
      ),
    );
  }
}
