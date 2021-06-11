import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget shopItem(String imagem, String nome) => Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Row(
  
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
    children: <Widget>[
  
      Stack(
  
        children: <Widget>[
  
          Container(
  
        alignment: Alignment.centerLeft,
  
        height: 60,
  
        width: 60,
  
        decoration: BoxDecoration(
  
          image: DecorationImage(
  
            image: AssetImage(imagem),
  
            fit: BoxFit.cover
  
          ),
  
          borderRadius: BorderRadius.circular(30)
  
        ),
  
      ),
  
      Row(
  
        children: <Widget>[
  
          SizedBox(width: 100,),
  
          Container(
  
            alignment: Alignment.center,
  
            child: Text(nome, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
  
          )
  
        ],
  
      ),
  
      Row(
  
          children: <Widget>[
  
            SizedBox(height: 70,width: 100,),
  
            Icon(Icons.star, color: Color.fromRGBO(255, 215, 0, 1),),
  
            Text('4.5', style: TextStyle(color: Color.fromRGBO(255, 215, 0, 1)),),
  
            Text('. Brasileira . 1,9 km'),
  
          ],
  
        )
  
  
  
        ],
  
      ),
  
      Icon(Icons.favorite_outline)
  
    ]),
);
