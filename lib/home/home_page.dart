import 'package:clone_ifood/components/categories_menu/category_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: CategoryMenu(),
      ),
    );
  }
}
