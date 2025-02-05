import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key , required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(category,
        style: const TextStyle(
          fontSize: 25,
          fontWeight:FontWeight.w600,
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [
            News_List_View_Builder(category: category,),
          ],
        ),
      ),
    );
  }
}