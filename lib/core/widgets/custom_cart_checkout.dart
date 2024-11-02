import 'package:flutter/material.dart';
import 'package:shop_ecommerce/core/utils/app_colors.dart';
import 'package:shop_ecommerce/core/widgets/custom_button.dart';
import 'package:shop_ecommerce/core/widgets/subtitle_text.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';

class CustomCartCheckOut extends StatelessWidget {
  const CustomCartCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight + 10,
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          border: Border(
              top: BorderSide(
                  width: 2, color: AppColors.cRed.withOpacity(0.5)))),
      child: ListTile(
        title:
            const TitleText(fontsize: 15, label: 'Total:(6 items/9 products)'),
        subtitle: const SubTitleText(fontsize: 15, label: 'Price: \$200'),
        trailing: CustomButton(
          onPressed: () {},
          label: 'Checkout',
          icon: Icons.payment,
          backgroundColor: AppColors.darkPrimary.withOpacity(0.9),
        ),
      ),
    );
  }
}
