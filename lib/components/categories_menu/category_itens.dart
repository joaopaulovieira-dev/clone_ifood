import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemList(String imagem, String nome) => Column(
  children: <Widget>[
    Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagem),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(18)
      ),
    ),
    SizedBox(
      height: 2,
    ),
    Container(
      child: Text(
        '$nome',
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.center,
      ),
    )
  ],
);
