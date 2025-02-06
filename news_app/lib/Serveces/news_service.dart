

import 'package:dio/dio.dart';
import 'package:news_app/Models/news_model.dart';

class NewsService {

  final Dio dio;

NewsService(this.dio);

Future<List<NewsModel>> getNews({required String category}) async {
  try {
  Response response = await dio.get(
    'https://newsdata.io/api/1/latest?apikey=pub_67687adde37e99e736588c777aecc1a8143a3&country=eg&language=ar&category=$category');
  
    // ignore: non_constant_identifier_names
    Map<String,dynamic> JsonData = response.data;
  
    List<dynamic> articls = JsonData['results'];
  List<NewsModel> results = [];
  for(var x in articls)
  {
    NewsModel newsModel = NewsModel.fromJson(x); 
    results.add(newsModel);
  }
  return results;
}  catch (e) {
  return [];
}
}
}

