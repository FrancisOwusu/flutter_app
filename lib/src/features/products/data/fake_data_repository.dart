import 'package:itestapp/src/constants/test_products.dart';
import 'package:itestapp/src/features/products/domain/product.dart';

class FakeProductRepository {
  // private constructor;
  FakeProductRepository._();
  //singleton design
  static FakeProductRepository instance = FakeProductRepository._();
  final List<Product> _products = kTestProducts;
  List<Product> getProductList() {
    return _products;
  }

  Product? getProduct(String id) {
    return _products.firstWhere((product) => product.id == id);
  }

  Future<List<Product>> fetchProductsList() {
    return Future.value(_products);
  }

  Stream<List<Product>> watchProductsList() {
    return Stream.value(_products);
  }

  Stream<Product?> watchProduct(String id) {
    return watchProductsList()
        .map((products) => products.firstWhere((product) => product.id == id));
  }
}

// final productRepositoryProvider = Provider<FakeProductRepository>((ref) {
//   return FakeProductRepository.instance;
// });
