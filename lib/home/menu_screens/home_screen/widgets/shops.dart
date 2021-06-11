import 'package:clone_ifood/components/shops/shop_itens.dart';
import 'package:clone_ifood/core/app_images.dart';
import 'package:flutter/material.dart';

class Shops extends StatelessWidget {
  const Shops({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
         children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Container(
             margin: EdgeInsets.only(left: 24, bottom: 20),
             alignment: Alignment.centerLeft,
             child: Text('Lojas', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
           ),
            ],
          ),
          ListView(
            shrinkWrap: true,
            primary: false,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          shopItem(AppImages.famosos1, 'Cacau Show'),
          shopItem(AppImages.famosos2, 'MC Donald\'s'),
          shopItem(AppImages.famosos3, 'Padoka'),
          shopItem(AppImages.famosos4, 'Paganini Doceria'),
          shopItem(AppImages.famosos5, 'Relicário Bistro'),
        ],
      ),
         ],
       );
  }
}