

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() async{

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
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is : $counter'),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose function run');
  }

}
