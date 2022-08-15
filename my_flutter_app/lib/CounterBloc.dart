
import 'dart:async';


enum CounterAction { Increment, Decrement, Reset}


class CounterBloc {
  
  int counter;

  //Here we use Broadcast to listen in multiple places and to avoid stream listener issue
  final _stateStreamController = StreamController<int>.broadcast();
  StreamSink<int> get counterSink => _stateStreamController.sink;
  Stream<int> get counterStream => _stateStreamController.stream;


  final _eventControllerStream = StreamController<CounterAction>();
  StreamSink<CounterAction> get eventSink => _eventControllerStream.sink;
  Stream<CounterAction> get eventStream => _eventControllerStream.stream;


  CounterBloc() {
    counter = 0;

    //Here we listen broadcast messgae
    counterStream.listen((event) {
      print("broadcast msg: ${event.toString()}");
    });

    eventStream.listen((event) {
      if(event == CounterAction.Increment) counter++;
      else if(event == CounterAction.Decrement) counter--;
      else if(event == CounterAction.Reset) counter = 0;

      counterSink.add(counter);
    });
    
  }

  //Use dispose() to move Stream-Controller object into garbej colleection once particular widget-lifecycle has been ended
  void dispose() {
    _stateStreamController.close();
    _eventControllerStream.close();
  }


}