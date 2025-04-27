import 'package:store_app/helper/api.dart';

import '../constants.dart';

class AllCategories {
  Future<List<dynamic>> getAllCategories() async {
    // ignore: missing_required_param
    List<dynamic> data = await Api().get(url: '$baseUrl/categoriese');
    return data;
  }
}
