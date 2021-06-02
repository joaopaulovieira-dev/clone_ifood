import 'package:clone_ifood/components/categories_menu/category_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
@@ -10,6 +11,14 @@ class HomePage extends StatefulWidget {
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.white));
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