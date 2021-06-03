import 'package:clone_ifood/core/app_colors.dart';
import 'package:clone_ifood/core/app_text_styles.dart';
import 'package:clone_ifood/screens/markets.dart';
import 'package:clone_ifood/screens/restaurants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.white,
      ),
      home: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Avenida N. Senhora do Amparo, 971',
                      style: AppTextStyles.titleAppBar,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 16,
                      color: AppColors.red,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.qr_code_scanner,
                    color: AppColors.red,
                    size: 23,
                  ),
                )
              ],
            ),
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0), //Altura do Menu
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelStyle: AppTextStyles.tabNavigator,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1,
                  labelPadding: EdgeInsets.all(11),
                  indicatorColor: AppColors.red,
                  labelColor: AppColors.red,
                  unselectedLabelColor: AppColors.greyTabUnselected,
                  tabs: <Widget>[
                    Text("Restaurantes"),
                    Text("Mercados"),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              RestaurantScreen(),
              MarketScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
