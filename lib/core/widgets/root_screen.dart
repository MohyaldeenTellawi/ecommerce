import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shop_ecommerce/core/controllers/theme_controller.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/screens/home.dart';

import '../../screens/cart.dart';
import '../../screens/profile.dart';
import '../../screens/search.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currenrtIndex = 0;
  late PageController controller;

  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currenrtIndex);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeController>(context);
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        fixedColor: theme.getIsDarkMode
            ? AppColors.lightScaffold
            : AppColors.darkScaffoldColor,
        currentIndex: currenrtIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.magnifyingGlass), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cartShopping), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser), label: 'Profile'),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        onTap: (value) {
          setState(() {
            currenrtIndex = value;
            controller.jumpToPage(value);
          });
        },
      ),
    );
  }
}
