import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Hello Dev'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
      ),
    ),
  ));



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Your Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
