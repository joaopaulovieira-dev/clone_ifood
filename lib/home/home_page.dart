import 'package:clone_ifood/core/app_colors.dart';
import 'package:clone_ifood/core/app_text_styles.dart';
import 'package:clone_ifood/home/menu_screens/home_screen/home_screen.dart';
import 'package:clone_ifood/home/menu_screens/profile_screen/profile_screen.dart';
import 'package:clone_ifood/home/menu_screens/requests_screen/requests_screen.dart';
import 'package:clone_ifood/home/menu_screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    RequestsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  // ignore: unused_element
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
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.white,
            selectedItemColor: AppColors.greySBottomNavigationBar,
            unselectedItemColor: AppColors.greyUBottomNavigationBar,
            selectedLabelStyle: AppTextStyles.titleSNavigatoritem,
            unselectedLabelStyle: AppTextStyles.titleSNavigatoritem,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Início',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: 'Busca',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.assignment_outlined,
                  size: 30,
                ),
                label: 'Pedidos',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                ),
                label: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
