import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'custom_button.dart';
import 'subtitle_text.dart';
import 'title_text.dart';

class CustomEmptyView extends StatelessWidget {
  const CustomEmptyView(
      {super.key,
      required this.imagePath,
      required this.title1,
      required this.title2,
      this.isCart = false,
      required this.subtitle});

  final String imagePath, title1, title2, subtitle;
  final bool isCart;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                imagePath,
                height: size.height * 0.4,
                width: double.infinity,
              ),
              const SizedBox(height: 20),
              TitleText(
                  fontsize: 50,
                  fontWeight: FontWeight.bold,
                  label: title1,
                  color: AppColors.cRed.withOpacity(0.7),
                  textAlign: TextAlign.center),
              const SizedBox(height: 10),
              TitleText(
                  fontsize: 20, label: title2, textAlign: TextAlign.center),
              const SizedBox(height: 10),
              SubTitleText(
                fontsize: 15,
                textAlign: TextAlign.center,
                label: subtitle,
              ),
              const SizedBox(height: 50),
              isCart
                  ? CustomButton(
                      padding: const EdgeInsetsDirectional.only(
                          start: 100, end: 100),
                      icon: Icons.shopping_cart,
                      label: 'Shopping Now',
                      onPressed: () {},
                      backgroundColor: AppColors.darkPrimary.withOpacity(0.7))
                  : const SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
