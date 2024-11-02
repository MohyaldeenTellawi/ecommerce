import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      this.obscureText,
      required this.controller,
      this.fillColor,
      required this.hintText,
      required this.prefixIcon,
      required this.suffixIcon});

  final bool? obscureText;
  final TextEditingController controller;
  final Color? fillColor;
  final String hintText;
  final Widget prefixIcon, suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
        onChanged: (value) {},
        onFieldSubmitted: (value) {},
      ),
    );
  }
}
