import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnfoods_front/general/application/global_controller.dart';
import 'package:mnfoods_front/general/model/product_model.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final GlobalController globalController =Get.find<GlobalController>();
    return GetBuilder<GlobalController>(
      id: 'products',
      builder: (_) {
        return ListView.builder(
            itemBuilder: (__, int index) {
              final Product product = _.products[index];
              return ListTile(
                trailing: IconButton(
                    icon: Icon(Icons.favorite,
                        color: product.isFavorite ? Colors.blue : Colors.grey),
                    onPressed: () {
                      _.onFavorite(index, !product.isFavorite);
                    }),
                title: Text(product.name),
                subtitle: Text("USD ${product.price.toString()}"),
              );
            },
            itemCount: _.products.length);
      },
    );
  }
}
