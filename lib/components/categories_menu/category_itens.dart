import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemList(String imagem, String nome) => Stack(children: <Widget>[
      Container(
        margin: const EdgeInsets.all(4),
        width: 100,
        height: 100,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(imagem),fit: BoxFit.cover), borderRadius: BorderRadius.circular(16)),
      ),
      Container(
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(left: 4, top: 24),
        width: 100,
        height: 100,
        child: Text(
          '$nome',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      )
    ]);
