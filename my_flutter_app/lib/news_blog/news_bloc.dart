

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:my_flutter_app/news_blog/news_info.dart';

enum NewsAction {FETCH, DELETE}

class NewsBloc {

  final _stateStreamController = StreamController<List<Article>>();
  StreamSink<List<Article>> get _newsSink => _stateStreamController.sink;
  Stream<List<Article>> get newsStream => _stateStreamController.stream;


  final _eventControllerStream = StreamController<NewsAction>();
  StreamSink<NewsAction> get eventSink => _eventControllerStream.sink;
  Stream<NewsAction> get _eventStream => _eventControllerStream.stream;

  NewsBloc() {
    _eventStream.listen((event) async {
      if(event == NewsAction.FETCH) {
        try {
          var news = await getNews();
          if(news != null)
           _newsSink.add(news.articles);
          else
           _newsSink.addError("Something went wrong");
        } on Exception catch (e) {
           _newsSink.addError("Something went wrong");
        }
      }
    });
  }

  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel;

    try {
      var response = await client.get('http://newsapi.org/v2/everything?domains=wsj.com&apiKey=c1b99090ddc2479ca027567260392eb5');
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }


}