
import 'package:clone_ifood/core/app_colors.dart';
import 'package:clone_ifood/screens/markets.dart';
import 'package:clone_ifood/screens/restaurants.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatefulWidget {
  TabNavigator({Key? key}) : super(key: key);

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
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
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0), //Altura do Menu
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.all(15),
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
