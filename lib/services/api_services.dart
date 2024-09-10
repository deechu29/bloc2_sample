import 'dart:convert';

import 'package:bloc2_sample/model/product_api.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<Product>?> fetchproducts() async {
    List<Product>? plist = [];
    final response =
        await http.get(Uri.parse("https://dummyjson.com/products"));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      var res = ProductResModel.fromJson(json);
      plist = res.products;
      return plist;
    }
  }
}
