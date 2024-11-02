import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:shop_ecommerce/core/widgets/custom_product_item.dart';
import 'package:shop_ecommerce/core/widgets/custom_text_filled.dart';

import '../core/controllers/theme_controller.dart';
import 'product_deatils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;
  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeController>(context);
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: CustomAppBar(theme: theme, label: 'Search'),
      body: Column(
        children: [
          CustomTextFeild(
              controller: _searchController,
              hintText: 'Search',
              fillColor: theme.getIsDarkMode
                  ? AppColors.lightCardColor
                  : AppColors.cBeg,
              prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
              suffixIcon: IconButton(
                  onPressed: () {
                    _searchController.clear();
                    FocusScope.of(context).unfocus();
                  },
                  icon: const Icon(FontAwesomeIcons.xmark))),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsetsDirectional.only(start: 12, end: 12),
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: size.aspectRatio * 1.4,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15),
              itemBuilder: (context, index) {
                return CustomProductItem(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ProductDeatilsScreen()));
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
