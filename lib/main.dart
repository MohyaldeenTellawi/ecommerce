import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ecommerce/core/utils/theme_data.dart';
import 'package:shop_ecommerce/core/widgets/root_screen.dart';
import 'core/controllers/theme_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeController()),
      ],
      child: Consumer<ThemeController>(builder: (context, theme, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce App',
          theme: Styles.themeData(
              isDarkTheme: theme.getIsDarkMode, context: context),
          home: const RootScreen(),
        );
      }),
    );
  }
}
