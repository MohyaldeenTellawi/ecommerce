import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText(
      {super.key,
      required this.label,
      this.fontsize,
      this.fontWeight,
      this.color,
      this.fontStyle,
      this.decorationStyle,
      this.textAlign,
      this.overflow});

  final String label;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? color;
  final FontStyle? fontStyle;
  final TextDecoration? decorationStyle;

  final TextOverflow? overflow;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(label,
        textAlign: textAlign,
        style: TextStyle(
            overflow: overflow ?? TextOverflow.ellipsis,
            fontSize: fontsize ?? 14,
            fontWeight: fontWeight ?? FontWeight.normal,
            color: color,
            fontStyle: fontStyle ?? FontStyle.normal,
            decoration: decorationStyle ?? TextDecoration.none));
  }
}
