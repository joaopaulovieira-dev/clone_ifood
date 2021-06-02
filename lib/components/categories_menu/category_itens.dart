import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget itemList(Color cor, String nome) => Stack(children: <Widget>[
      Container(
        margin: const EdgeInsets.fromLTRB(4, 4, 4, 22),
        width: 100,
        decoration:
            BoxDecoration(color: cor, borderRadius: BorderRadius.circular(16)),
      ),
      Container(
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(left: 4),
        width: 100,
        height: 160,
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
