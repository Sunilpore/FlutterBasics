

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:my_flutter_app/services/world_time.dart';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

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
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag' : instance.flag,
      'time': instance.time
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
      backgroundColor: Colors.grey[200],
      body: const SpinKitFoldingCube(
        color: Colors.blue,
        size:50,
      ),
    );
  }
}
