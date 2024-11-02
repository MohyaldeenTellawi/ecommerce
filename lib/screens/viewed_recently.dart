import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../core/controllers/theme_controller.dart';
import '../core/utils/app_colors.dart';
import '../core/utils/assets_manager.dart';
import '../core/widgets/custom_app_bar.dart';

import '../core/widgets/custom_empty_cart.dart';
import '../core/widgets/custom_wishlist_item.dart';

class ViewedRecently extends StatefulWidget {
  const ViewedRecently({super.key});

  @override
  State<ViewedRecently> createState() => _ViewedRecentlyState();
}

class _ViewedRecentlyState extends State<ViewedRecently> {
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    ThemeController theme = Provider.of<ThemeController>(context);
    Size size = MediaQuery.sizeOf(context);
    return isEmpty
        ? Scaffold(
            appBar: CustomAppBar(
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              theme: theme,
              label: 'Viewed Recently',
            ),
            body: CustomEmptyView(
                imagePath: AssetsManager.shoppingBasket,
                title1: 'Whoops!',
                title2: 'No recent items',
                subtitle: ''),
          )
        : Scaffold(
            appBar: CustomAppBar(
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                theme: theme,
                label: 'Viewed Recently',
                actionWidget: IconButton(
                  icon: const Icon(FontAwesomeIcons.trashCan),
                  onPressed: () {
                    setState(() {
                      isEmpty = true;
                    });
                  },
                  color: AppColors.cRed,
                )),
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
