import 'package:flutter/material.dart';
import 'package:my_flutter_app/CounterBloc.dart';

void main() =>
  runApp(MaterialApp(
    home: CounterWidget()
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
                return Text('Counter value is ${snapshot.data}',
                style: Theme.of(context).textTheme.headline2,);
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
