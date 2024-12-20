import 'package:ecomerce_flutter_app/screens/ItemPage.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'CartPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (contex) => HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        //"itemPage": (context) => ItemPage(),
      },
    );
  }
}
