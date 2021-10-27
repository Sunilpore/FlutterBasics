

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:my_flutter_app/services/world_time.dart';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void getData() async {

    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    var response = await get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    //Converting Response body data into Map object
    Map map = jsonDecode(response.body);
    print('Title: ${map['title']}');

  }


  void setUpWorldTime() async {
    WorldTime instance = WorldTime(location: 'Kolkata', flag: 'india.png', url:'Asia/Kolkata');
    await instance.getRealTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getData();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
