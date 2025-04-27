import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

import '../constants.dart';

class GetAllPrdacts {
  Future<List<ProductModel>> getAllproducts() async {
    // ignore: missing_required_param
    List<dynamic> data = await Api().get(url: '$baseUrl');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
