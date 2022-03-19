
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

    //Here data pre-defined value will be retrieved from "choose-location" screen selected country.
    data = data.isNotEmpty? data: ModalRoute.of(context).settings.arguments;
    if(data['isDayTime'] == null) {
      data['isDayTime'] = false;
    }
    print('home_state_arg: $data');

    //set background
    String bgImage = data['isDayTime'] ? 'day.ong' : 'night.png';
    Color bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit:BoxFit.contain,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,120.0,0,0),
              child: Column(
                children: [
                  TextButton.icon(
                    onPressed: () async {
                      dynamic result = await Navigator.pushNamed(context,'/location');
                      setState(() {
                        data = {
                          'time': result['time'],
                          'location': result['location'],
                          'isDaytime': result['isDaytime'],
                          'flag': result['flag'],
                        };
                      });
                    },
                    icon: Icon(
                        Icons.edit_location,
                        color: Colors.grey[300],
                    ),
                    label: Text(
                        'Edit Location',
                      style: TextStyle(
                        color: Colors.grey[300]
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          data['location'],
                        style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                        ),),
                    ],
                  ),
                SizedBox(height: 20.0,),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: Colors.white
                  ),
                )
                ],
              ),
            ),
          )),
    );
  }
}
