import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                    child: Text('ShopX',
                        style: TextStyle(
                            fontFamily: 'avenir',
                            fontSize: 32,
                            fontWeight: FontWeight.w900))),
                IconButton(
                  icon: Icon(Icons.view_list_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.grid_view),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount: 100,
                mainAxisSpacing: 16,
                crossAxisSpacing: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 50,
                    height: 50,
                    color: Colors.amber,
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
          )
        ],
      ),
    );
  }
}
