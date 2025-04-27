import 'package:store_app/models/product_model.dart';

import '../constants.dart';
import '../helper/api.dart';

class ProductsByCategory {
  Future<List<ProductModel>> getProductbyCategory(
      {required String CategoryName}) async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(url: '$baseUrl/category/$CategoryName');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
