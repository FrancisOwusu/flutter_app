import 'package:flutter/material.dart';
import 'package:itestapp/src/features/products/data/fake_data_repository.dart';
import 'package:itestapp/src/localization/string_hardcoded.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
    final products = FakeProductRepository.instance.getProductList();
    return products.isEmpty
        ? Center(
            child: Text(
              "No products found".hardcoded,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          )
        : MaterialApp(
            title: title,
            home: Scaffold(
              appBar: AppBar(
                title: const Text(title),
              ),
              body: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(100, (index) {
                  return Center(
                    child: Text(
                      'Item $index',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  );
                }),
              ),
            ),
          );
  }
}
