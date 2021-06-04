import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget famousItem(String imagem, String nome) => Column(
  children: <Widget>[
    Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagem),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(30)
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
