import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/homepage.dart';

void main() =>
  runApp(MaterialApp(
    home: MyApp()
  ));


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark
      ),
      home: HomePage(),
    );
  }
}
