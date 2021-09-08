import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: UserCard()
  ));

//UserCard Project

class UserCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("User ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user2.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
                'Name',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),),
            SizedBox(height: 10.0,),
            Text(
              'Trick star',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),

            SizedBox(height: 30.0),

            Text(
              'Current Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),),
            SizedBox(height: 10.0,),
            Text(
              '6',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),

            SizedBox(height: 30.0),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'trick2star@trcik.co.in',
                  style:TextStyle(
                    color: Colors.grey[400],
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ) ,)
              ],
            )
          ],
        ),
      ),
    );
  }
}


//-------------------------------------------------//
//Expanded Widgets//
//-------------------------------------------------//

/**
 * Here we use Expanded as a new Widget like a Container
 * It is similar to FlexBox in web and LinearLayout in Native Android
 * @param flex-> use to define width of an ExpandED Widget
 */
class ExpandedWidgetDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [

          Expanded(
              flex: 2,
              child: Image.asset("assets/space-1.jpg")
          ),

          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text("1"),
            ),
          ),

          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.deepOrange,
              child: Text("2"),
            ),
          ),


          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text("3"),
            ),
          )
        ],
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
//Rows and Columns//
//-------------------------------------------------//

/**
 * Add views inside Column widget
 * Here,vertical y-axis consider as a mainAxisAlignment and
 * horizontal x-axis consider as a crossAxisAlignment
 */
class ColumnWidgetDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Row(
            children: [
              Text("Welcome",),
              Text("To Widgets")
            ],
          ),

          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.cyan,
            child: Text("One"),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.deepOrange,
            child: Text("Two"),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.amber,
            child: Text("Three"),
          )
          ],
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
 * Add views inside Row widget
 * Here,horizontal x-axis consider as a mainAxisAlignment and
 * vertical y-axis consider as a crossAxisAlignment
 */
class RowWidgetDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello, world'),
          FlatButton(
              onPressed: (){},
              color: Colors.amber,
              child: Text('Click me')
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          )
        ],
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
//Container, Margin and Padding//
//-------------------------------------------------//

/**
 * If we use empty container then it well occupy entire avlaible space,
 * else if we apply any child component inside container like Text then it will take space around TextView only
 */
class ContainerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
        padding: EdgeInsets.fromLTRB( 10.0, 20.0, 30.0, 40.0),
        color: Colors.grey[400],
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
 * If single element need padding then we can use paddingLayout instead of Container,
 * but we can't use margin params inside PaddingLayout.
 * If we want to use margin then need to use Container
 */
class PaddingWidgetDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Welcome"),
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