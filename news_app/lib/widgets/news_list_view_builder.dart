import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';

import '../Serveces/news_service.dart';
import 'news_list_view.dart';

// ignore: camel_case_types
class News_List_View_Builder extends StatefulWidget {
  const News_List_View_Builder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<News_List_View_Builder> createState() => _News_List_View_BuilderState();
}

// ignore: camel_case_types
class _News_List_View_BuilderState extends State<News_List_View_Builder> {
  
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: future,
        builder: (context, snapshot) {
          
          if (snapshot.hasData) {
            return News_List_view(results: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Center(
                  child:
                      Text("OOPS there is an error , please try again later")),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
