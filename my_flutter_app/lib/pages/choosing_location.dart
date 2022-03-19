

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_flutter_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];


  void getData() async {

    //simulate network request for a character name
    String userName = await Future.delayed(Duration(seconds: 5), (){
        return "Thor";
    });

    //simulate network request to get Bio of the character
    String bio = await Future.delayed(Duration(seconds: 2), () {
        return "God of Thunder";
    });
    
    print('statement $userName $bio');
  }

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getRealTime();

    print('location : ${instance.location}');
    print('time : ${instance.time}');
    print('dayTime : ${instance.isDayTime}');
    print('flag : ${instance.flag}');
    print('url : ${instance.url}');

    //Navigate to Home screen
    Navigator.pop(context, {
      'location': instance.location,
      'flag' : instance.flag,
      'time': instance.time,
      'isDayTime':instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('initState function run');
  }

  @override
  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 4.0),
              child: Card(
                child: ListTile (
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          },)
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose function run');
  }

}
