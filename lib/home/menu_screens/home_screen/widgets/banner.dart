import 'package:clone_ifood/core/core.dart';
import 'package:flutter/material.dart';

class IfoodBanner extends StatelessWidget {
  const IfoodBanner({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.banner),fit: BoxFit.cover
          )
        ),
    );
  }
}