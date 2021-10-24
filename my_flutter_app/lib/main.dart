import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/Comic.dart';
import 'package:my_flutter_app/pages/choosing_location.dart';
import 'package:my_flutter_app/pages/home.dart';
import 'package:my_flutter_app/pages/loading.dart';
import 'ComicCard.dart';

void main() =>
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));

//UserCard Project

class ComicsList extends StatefulWidget {

  @override
  _ComicsListState createState() => _ComicsListState();
}

class _ComicsListState extends State<ComicsList> {

  List<Comic> comics = [
    Comic(comicUniverse: "Marvel", characterName: "Captain America"),
    Comic(comicUniverse: "Marvel", characterName: "Iron Man"),
    Comic(comicUniverse: "DC", characterName: "Batman"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: comics.map((comic) => ComicCard(
          comic: comic,
          delete: (){
            setState(() {
              comics.remove(comic);
            });
          },
        )).toList(),
      ),
    );
  }
}
