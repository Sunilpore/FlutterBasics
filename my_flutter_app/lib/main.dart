import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/Comic.dart';

void main() =>
  runApp(MaterialApp(
    home: ComicsList()
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

  Widget comicTemplate(Comic comic){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              comic.characterName,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600]
              ),
            ),

            SizedBox(height: 6.0,),

            Text(
              comic.comicUniverse,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800]
              ),
            )
          ],
        ),
      ),
    );
  }

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
        children: comics.map((comic) => comicTemplate(comic)).toList(),
      ),
    );
  }
}
