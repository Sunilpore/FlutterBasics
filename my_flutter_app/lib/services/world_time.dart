

import 'dart:convert';

import 'package:http/http.dart';

class WorldTime {

  String location; // location name for the UI
  String time; //the time in that location
  String flag; //url to an asset flag icon
  String url; //location url for api endpoint


  WorldTime({this.location, this.flag, this.url});


  Future<void> getRealTime() async {

    //Uri uri = Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London');
    Uri uri = Uri.parse('https://worldtimeapi.org/api/timezone/$url');
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

    //set time property
    time = currentDateTime.toString();
  }


}