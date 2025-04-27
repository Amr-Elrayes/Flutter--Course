import 'rating_model.dart';

class ProductModel {
  final dynamic id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(JsonData) {
    return ProductModel(
      id: JsonData['id'],
      title: JsonData['title'],
      price: JsonData['price'],
      description: JsonData['description'],
      category: JsonData['category'],
      image: JsonData['image'],
      rating: RatingModel.fromJson(JsonData['rating']),
    );
  }
}


