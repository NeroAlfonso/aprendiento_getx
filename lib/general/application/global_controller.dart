import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mnfoods_front/general/model/product_model.dart';

class GlobalController extends GetxController {
  List<Product> _products = [];
  List<Product> get products => _products;
  @override
  void onInit() {
    super.onInit();
    print(":smile: calquier viana global");
    _loadProducts();
  }

  onFavorite(int index, bool isFavorite) {
    _products[index].isFavorite = isFavorite;
    update(['products']);
  }

  Future<void> _loadProducts() async {
    final String productsStr =
        await rootBundle.loadString('assets/products.json');
    _products = (jsonDecode(productsStr) as List)
        .map((e) => Product.fromJson(e))
        .toList();
    print('==================products=loaded=================');
    update(['products']);
  }
}
