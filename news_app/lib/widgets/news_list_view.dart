import 'package:flutter/material.dart';
import 'package:news_app/Models/news_model.dart';
import 'package:news_app/widgets/news_tile.dart';



// ignore: camel_case_types
class News_List_view extends StatelessWidget {
  final List<NewsModel> results;

const News_List_view({super.key , required this.results});


  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: results.length,
              (context, index) {
                return NewsTile(card: results[index]);
              },
            ),
          );
  }
}
