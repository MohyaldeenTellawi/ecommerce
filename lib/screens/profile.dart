import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shop_ecommerce/core/controllers/theme_controller.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/core/utils/assets_manager.dart';
import 'package:shop_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:shop_ecommerce/core/widgets/custom_button.dart';
import 'package:shop_ecommerce/core/widgets/custom_list_tile.dart';
import 'package:shop_ecommerce/core/widgets/subtitle_text.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';
import 'package:shop_ecommerce/screens/viewed_recently.dart';
import 'package:shop_ecommerce/screens/wishlist.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeController>(context);
    return Scaffold(
      appBar: CustomAppBar(theme: theme, label: 'Profile'),
      body: Column(
        children: [
          const Visibility(
            visible: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TitleText(
                label: 'Login to show all your orders',
              ),
            ),
          ),
          CustomListTile(
            color: AppColors.cRed.withOpacity(0.5),
            leading: AssetsManager.user,
            title: 'mohyaldeen tellawi',
            subtitleWidget:
                const SubTitleText(label: 'mohyaldeentellawi@gmail.com'),
            trailingWidget: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.penToSquare),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.all(8.0),
                  child: TitleText(label: 'General'),
                ),
                CustomListTile(
                  leading: AssetsManager.orderSvg,
                  title: 'All Orders',
                  trailingWidget: const Icon(FontAwesomeIcons.chevronRight),
                ),
                CustomListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const WishlistScreen();
                    }));
                  },
                  leading: AssetsManager.wishlistSvg,
                  title: 'Wishlist',
                  trailingWidget: const Icon(FontAwesomeIcons.chevronRight),
                ),
                CustomListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ViewedRecently();
                    }));
                  },
                  leading: AssetsManager.recent,
                  title: 'Viewed Recently',
                  trailingWidget: const Icon(FontAwesomeIcons.chevronRight),
                ),
                CustomListTile(
                  leading: AssetsManager.address,
                  title: 'Address',
                  trailingWidget: const Icon(FontAwesomeIcons.chevronRight),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsetsDirectional.all(8.0),
                  child: TitleText(label: 'Settings'),
                ),
                CustomListTile(
                  leading: AssetsManager.theme,
                  title: 'System Mode',
                  subtitleWidget: SubTitleText(
                      label: theme.getIsDarkMode ? 'Dark' : 'Light'),
                  trailingWidget: Switch.adaptive(
                    value: theme.getIsDarkMode,
                    onChanged: (value) {
                      theme.setDarkMode(isDarkMode: value);
                    },
                  ),
                ),
                CustomListTile(
                  leading: AssetsManager.lang,
                  title: 'Shop Language',
                  subtitleWidget: const SubTitleText(label: 'English'),
                  trailingWidget: const Icon(FontAwesomeIcons.chevronRight),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsetsDirectional.all(8.0),
                  child: TitleText(label: 'Others'),
                ),
                CustomListTile(
                  leading: AssetsManager.privacy,
                  title: 'Privacy & Policy',
                  trailingWidget: const Icon(FontAwesomeIcons.chevronRight),
                ),
                const SizedBox(height: 10),
                CustomButton(
                    padding:
                        const EdgeInsetsDirectional.only(start: 100, end: 100),
                    backgroundColor: AppColors.cRed,
                    icon: FontAwesomeIcons.rightFromBracket,
                    label: 'Logout',
                    onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
