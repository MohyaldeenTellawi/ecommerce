import 'package:flutter/material.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.leading,
      required this.title,
      this.subtitleWidget,
      required this.trailingWidget,
      this.onTap,
      this.color});

  final String leading;
  final String title;
  final Widget? subtitleWidget;
  final Widget trailingWidget;
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsetsDirectional.all(10),
            width: 40,
            height: 40,
            padding: const EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(leading)),
                shape: BoxShape.circle,
                color: color ?? Colors.transparent),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(label: title),
              subtitleWidget ?? const SizedBox()
            ],
          ),
          const Spacer(),
          trailingWidget,
          const SizedBox(width: 20)
        ],
      ),
    );
  }
}
