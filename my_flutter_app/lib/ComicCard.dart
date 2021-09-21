import 'package:flutter/material.dart';
import 'package:my_flutter_app/Comic.dart';



class ComicCard extends StatelessWidget {

  final Comic comic;

  ComicCard({this.comic});

  @override
  Widget build(BuildContext context) {

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


}