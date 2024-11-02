import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText(
      {super.key,
      required this.label,
      required this.baseColor,
      required this.highlightColor});

  final String label;
  final Color baseColor, highlightColor;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        period: const Duration(seconds: 3),
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: TitleText(label: label, fontsize: 20));
  }
}
