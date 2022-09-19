import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/shopping_page.dart';

void main() =>
  runApp(MaterialApp(
    home: MyApp()
  ));


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: ShoopingPage(),
    );
  }
}
