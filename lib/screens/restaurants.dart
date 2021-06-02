import 'package:clone_ifood/components/carousel/carousel.dart';
import 'package:clone_ifood/components/categories_menu/category_menu.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: CategoryMenu(),
          ),
          Container(
            height: 200,
            child: Carousel(),
          )
        ],
      ),
    );
}
}