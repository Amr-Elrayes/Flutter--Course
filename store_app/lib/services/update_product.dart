import 'package:store_app/constants.dart';

import '../helper/api.dart';
import '../models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required int id,
      required String category}) async {
// ignore: missing_required_param
    Map<String, dynamic> data = await Api().put(
      url: '$baseUrl/$id',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category
      },
    );
    return ProductModel.fromJson(data);
  }
}
