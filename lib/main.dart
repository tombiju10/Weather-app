import 'package:flutter/material.dart';
import 'package:weatherapp/Login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey), home: Login()
    );

  }
}