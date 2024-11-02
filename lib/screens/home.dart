import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ecommerce/core/utils/assets_manager.dart';
import 'package:shop_ecommerce/core/widgets/category_title_item.dart';
import 'package:shop_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:shop_ecommerce/core/widgets/latest_arrival_item.dart';
import 'package:shop_ecommerce/core/widgets/title_text.dart';
import 'package:shop_ecommerce/data/fake_dara/category_item_list.dart';
import '../core/controllers/theme_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late CarouselController _carouselController;

  List<String> images = [
    AssetsManager.banner1,
    AssetsManager.banner2,
  ];
  @override
  void initState() {
    // _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeController>(context);
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: CustomAppBar(theme: theme, label: 'E-Commerce Shop'),
      body: Column(children: [
        // CarouselView.builder(
        //   carouselController: _carouselController,
        //   itemBuilder: (context, index, realIndex) {
        //     return CustomSliderItem(
        //       imagePath: images[index],
        //     );
        //   },
        //   itemCount: images.length,
        //   options: CarouselOptions(
        //     autoPlayInterval: const Duration(seconds: 2),
        //     autoPlay: true,
        //     enlargeCenterPage: true,
        //     enlargeStrategy: CenterPageEnlargeStrategy.height,
        //   ),
        // ),
        Expanded(
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsetsDirectional.only(start: 10),
                child: TitleText(label: 'Latest Arrival'),
              ),
              SizedBox(
                height: size.height * .2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const LatestArivalItem();
                  },
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsetsDirectional.only(start: 10),
                child: TitleText(label: 'Category'),
              ),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                children: List.generate(categoriesItemList.length, (index) {
                  return CategoryTitleItem(
                    image: categoriesItemList[index].image,
                    name: categoriesItemList[index].name,
                  );
                }),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
