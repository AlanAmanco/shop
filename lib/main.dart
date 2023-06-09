import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/Ultils/app_routes.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/pages/product_detail_page.dart';
import 'package:shop/pages/products_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.purple,
            ).copyWith(
              secondary: Colors.deepOrange,
            ),
            fontFamily: 'Lato'),
        home: const ProductsOverviewPage(),
        routes: {AppRoutes.productDetail: (ctx) => const ProductDetailPage()},
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
