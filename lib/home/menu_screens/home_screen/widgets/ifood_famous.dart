import 'package:clone_ifood/components/ifood_famous/famous_itens.dart';
import 'package:clone_ifood/core/app_images.dart';
import 'package:flutter/material.dart';

class IfoodFamous extends StatelessWidget {
  const IfoodFamous({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
         children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Container(
             margin: EdgeInsets.only(left: 24),
             alignment: Alignment.centerLeft,
             child: Text('Famosos do Ifood', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
           ),
           Container(
             margin: EdgeInsets.only(right: 24),
             alignment: Alignment.centerRight,
             child: Text('Ver mais',style: TextStyle(color: Colors.red[400],fontSize: 14, fontWeight: FontWeight.bold),
           ))
            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(left: 24),
            child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            famousItem(AppImages.famosos1, 'Cacau Show'),
            famousItem(AppImages.famosos2, 'MC Donald\'s'),
            famousItem(AppImages.famosos3, 'Padoka'),
            famousItem(AppImages.famosos4, 'Paganini Doceria'),
            famousItem(AppImages.famosos5, 'Relicário Bistro'),
        ],
      ),
          ),
         ],
       );
  }
}