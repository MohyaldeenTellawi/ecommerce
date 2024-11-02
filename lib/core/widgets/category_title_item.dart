import 'package:flutter/material.dart';
import 'package:shop_ecommerce/core/widgets/subtitle_text.dart';

class CategoryTitleItem extends StatelessWidget {
  const CategoryTitleItem({super.key, required this.image, required this.name});

  final String image, name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 50, height: 50),
        const SizedBox(height: 5),
        SubTitleText(
          label: name,
          fontsize: 14,
          fontWeight: FontWeight.w500,
        )
      ],
    );
  }
}
