import 'package:clone_ifood/components/categories_menu/category_itens.dart';
import 'package:clone_ifood/core/app_images.dart';
import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.white),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          itemList(AppImages.categBrasileira, 'Brasileira'),
          itemList(AppImages.categCarnes, 'Carnes'),
          itemList(AppImages.categLanches, 'Lanches'),
          itemList(AppImages.categSaudavel, 'Saudável'),
          itemList(AppImages.categPizzas, 'Pizza'),
        ],
      ),
    );
  }
}
