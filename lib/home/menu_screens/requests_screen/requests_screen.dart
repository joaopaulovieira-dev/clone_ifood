import 'package:flutter/material.dart';

class RequestsScreen extends StatefulWidget {
  RequestsScreen({Key? key}) : super(key: key);

  @override
  _RequestsScreenState createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Pedidos'));
  }
}
