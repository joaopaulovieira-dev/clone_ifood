import 'package:clone_ifood/core/app_colors.dart';
import 'package:clone_ifood/core/app_images.dart';
import 'package:clone_ifood/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then(
      (_) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColorRed,
        ),
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
