import 'package:flutter/material.dart';
import 'package:my_flutter_app/CounterBloc.dart';

import 'news_blog/news_page.dart';

void main() =>
  runApp(MaterialApp(
    home: NewsPage()
  ));



class CounterWidget extends StatefulWidget {

  @override
  _CounterState createState() => _CounterState();
}


class _CounterState extends State<CounterWidget> {

  int counter = 0;
  final counterBloc = CounterBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState counter widget called...");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    counterBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StreamBuilder(
              stream: counterBloc.counterStream,
              initialData: 0,
              builder:  (context, snapshot) {

                //Check sanpshot has data
                if(snapshot.hasData)
                return Text('Counter value is ${snapshot.data}',
                style: Theme.of(context).textTheme.headline2,);

                //Check snapshot connection state to perform particular events
                if(snapshot.connectionState == ConnectionState.waiting){
                  print("Progress Intiatiated...");}
                if(snapshot.connectionState == ConnectionState.active){
                  print("In progress");}
                if(snapshot.connectionState == ConnectionState.done){
                  print("Progress done");}

                //Check snapshot error state
                if(snapshot.hasError) {
                  print(snapshot.hasError);
                }
              },
            ),
        ],

      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.eventSink.add(CounterAction.Increment);
            },
            tooltip: "Increment",
            child: Icon(Icons.add),
            backgroundColor: Colors.red[600],
          ),

          FloatingActionButton(
            onPressed: () {
              counterBloc.eventSink.add(CounterAction.Decrement);
            },
            tooltip: "Decrement",
            child: Icon(Icons.remove),
            backgroundColor: Colors.red[600],
          ),

          FloatingActionButton(
            onPressed: () {
              counterBloc.eventSink.add(CounterAction.Reset);
            },
            tooltip: "Increment",
            child: Icon(Icons.loop),
            backgroundColor: Colors.red[600],
          ),

        ],
      ),
    );
  }

}
