import 'package:flutter/material.dart';
import 'package:max_shop_1_prac/providers/products.dart';
import 'package:max_shop_1_prac/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

import 'screens/products_overiew_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shop',
        theme:
            ThemeData(primaryColor: Colors.brown, accentColor: Colors.orange),
        home: HomePage(),
        routes: {
          ProductDetailPage.routeName: (ctx) => ProductDetailPage(),
        },
      ),
    );
  }
}
