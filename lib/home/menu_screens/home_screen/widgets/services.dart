import 'package:flutter/material.dart';

import 'package:clone_ifood/components/categories_menu/category_itens.dart';
import 'package:clone_ifood/core/app_images.dart';

class IfoodServices extends StatelessWidget {
  const IfoodServices({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
        Container(
            height: 100,
            margin: EdgeInsets.only(left: 24),
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
                itemList(AppImages.bebidas, 'Bebidas'),
                itemList(AppImages.farmacia, 'Farmácia'),
                itemList(AppImages.convenicencia, 'Conveniencias'),
            ]
          ),
        ),
      ],
    );
  }
}