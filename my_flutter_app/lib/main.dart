import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: IconButtonDemo(),
  ));

//-------------------------------------------------//
              //Image Buttons and Icons//
//-------------------------------------------------//

/**
 * Load only ICON like normal image
 */
class ImageIconDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Icon(
          Icons.account_balance,
          color: Colors.blue ,
          size: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}


/**
 * Load ICON over a clickable button
 */
class IconButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: IconButton(
            onPressed: (){
              print("you clicked Icon button");
            },
            icon: Icon(Icons.account_balance),
            color: Colors.lightBlue,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

/**
 * Load ICON along with Custom Text on a clickable Button
 */
class ImageIconButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: RaisedButton.icon(
            onPressed:(){
              print("you clicked Image Icon button");
            },
          icon: Icon(
            Icons.account_balance
          ),
          label: Text("Institute"),
          color: Colors.lightBlue,)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}


//-------------------------------------------------//
            //Previous Code//
//-------------------------------------------------//


/**
 * Load Custom font style to Text via font assets
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Your Home',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
              'Hello Dev',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.grey[600],
                fontFamily: "Pattaya",
              )
          ),
        ),
      ),
    );
  }
}


/**
 * Load URL and asset Image Into The imageview
 */
class HomeImageWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child:Image.asset("assets/space-1.jpg")
        //Image.network("https://images.unsplash.com/photo-1464802686167-b939a6910659?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1933&q=80")

        /*Image(
          //image: NetworkImage('https://images.unsplash.com/photo-1464802686167-b939a6910659?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1933&q=80'),
          image: AssetImage("assets/space-1.jpg"))*/


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}