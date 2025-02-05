import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

// ignore: non_constant_identifier_names
List<CategoryModel> Categoris = [
  const CategoryModel(image: "assets/business.jpeg", categoryName: "Business"),
  const CategoryModel(
      image: "assets/technology.jpeg", categoryName: "Technology"),
  const CategoryModel(image: "assets/health.avif", categoryName: "Health"),
  const CategoryModel(image: "assets/science.avif", categoryName: "Science"),
  const CategoryModel(image: "assets/sports.avif", categoryName: "Sports"),
  const CategoryModel(
      image: "assets/entertaiment.avif", categoryName: "Entertainment"),
];

// ignore: camel_case_types
class categoris_list_view extends StatelessWidget {
  const categoris_list_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Categoris.length,
          itemBuilder: (context, index) {
            return CategoryCard(catigory: Categoris[index]);
          }),
    );
  }
}
