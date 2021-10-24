

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

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


  void getRealTime() async {

    //Uri uri = Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London');
    Uri uri = Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Kolkata');
    Response response = await get(uri);

    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    Map mapRespData = jsonDecode(response.body);
    print('Response body: ${mapRespData}');

    String dateTime = mapRespData['datetime'];
    String offset = mapRespData['utc_offset'].substring(1,3);
    //print('datetime: $dateTime');
    print('offset: $offset');

    //create date-time object
    DateTime currentDateTime = DateTime.parse(dateTime);

    //Here if we don't assign currentDateTime to itself, then it will give me some lag of tracking error as it is non-destructive and not update directly.
    //Show 1-2 hours back then actual time
    currentDateTime = currentDateTime.add(Duration(hours: int.parse(offset)));
    print(currentDateTime);

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getData();
    getRealTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
