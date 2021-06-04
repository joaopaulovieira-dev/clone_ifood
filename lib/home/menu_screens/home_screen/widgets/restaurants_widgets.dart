import 'package:clone_ifood/components/carousel/carousel.dart';
import 'package:clone_ifood/components/categories_menu/category_menu.dart';
import 'package:clone_ifood/core/app_colors.dart';
import 'package:clone_ifood/home/menu_screens/home_screen/widgets/banner.dart';
import 'package:clone_ifood/home/menu_screens/home_screen/widgets/button_filters_widget.dart';
import 'package:clone_ifood/home/menu_screens/home_screen/widgets/ifood_famous.dart';
import 'package:clone_ifood/home/menu_screens/home_screen/widgets/services.dart';
import 'package:flutter/material.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: AppColors.white),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            Container(
              child: ButtonFilters(),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 120,
              child: CategoryMenu(),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 200,
              child: Carousel(),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              child: IfoodBanner(),
            ),
             SizedBox(
              height: 12,
            ),
            Container(
              child: IfoodFamous(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: IfoodServices(),
            )
          ],
        ),
      ),
    );
  }
}
