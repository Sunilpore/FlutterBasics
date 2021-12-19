
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    data =  ModalRoute.of(context).settings.arguments;
    print('home_state_arg: $data');

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              TextButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context,'/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location'),
              )
            ],
          )),
    );
  }
}
