import 'package:shop_ecommerce/core/utils/assets_manager.dart';
import 'package:shop_ecommerce/data/modules/category_item_module.dart';

List<CategoryItemModule> categoriesItemList = [
  CategoryItemModule(
      id: AssetsManager.mobiles, image: AssetsManager.mobiles, name: 'Mobiles'),
  CategoryItemModule(
      id: AssetsManager.electronics,
      image: AssetsManager.electronics,
      name: 'Electronics'),
  CategoryItemModule(
      id: AssetsManager.pc, image: AssetsManager.pc, name: 'Labtops'),
  CategoryItemModule(
      id: AssetsManager.watch, image: AssetsManager.watch, name: 'Watches'),
  CategoryItemModule(
      id: AssetsManager.book, image: AssetsManager.book, name: 'Books'),
  CategoryItemModule(
      id: AssetsManager.cosmetics,
      image: AssetsManager.cosmetics,
      name: 'Cosmetics'),
  CategoryItemModule(
      id: AssetsManager.fashion, image: AssetsManager.fashion, name: 'Clothes'),
  CategoryItemModule(
      id: AssetsManager.shoes, image: AssetsManager.shoes, name: 'Shoes'),
];
