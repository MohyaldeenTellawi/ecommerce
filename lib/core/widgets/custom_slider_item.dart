import 'package:flutter/material.dart';

class CustomSliderItem extends StatelessWidget {
  const CustomSliderItem({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 5, end: 5),
      child: Image.asset(imagePath,
          width: double.infinity, height: size.height * .1),
    );
  }
}
