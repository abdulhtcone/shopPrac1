import 'package:flutter/material.dart';
import 'package:max_shop_1_prac/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailPage extends StatelessWidget {
  static const routeName = '/product-detail';
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductDetailPage(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
        appBar: AppBar(
          title: Text(loadedProduct.title),
        ),
        body: Container());
  }
}
