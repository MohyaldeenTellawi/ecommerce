import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText(
      {super.key,
      required this.label,
      this.fontsize,
      this.fontWeight,
      this.color,
      this.fontStyle,
      this.decorationStyle,
      this.maxLines,
      this.textAlign,
      this.overflow});

  final String label;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? color;
  final FontStyle? fontStyle;
  final TextDecoration? decorationStyle;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(label,
        maxLines: maxLines ?? 1,
        textAlign: textAlign,
        style: TextStyle(
            overflow: overflow ?? TextOverflow.ellipsis,
            fontSize: fontsize ?? 18,
            fontWeight: fontWeight ?? FontWeight.bold,
            color: color,
            fontStyle: fontStyle ?? FontStyle.normal,
            decoration: decorationStyle ?? TextDecoration.none));
  }
}
