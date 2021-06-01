import 'package:clone_ifood/components/categories_menu/category_itens.dart';
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
          itemList(Colors.red, 'Categoria 1'),
          itemList(Colors.blue, 'Categoria 2'),
          itemList(Colors.green, 'Categoria 3'),
          itemList(Colors.yellow, 'Categoria 4'),
          itemList(Colors.amber, 'Categoria 5'),
        ],
      ),
    );
  }
}
