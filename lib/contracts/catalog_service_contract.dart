
import 'package:shop_app/models/AllProducts.dart';
import 'package:shop_app/models/Categories.dart';
import 'package:shop_app/models/category_item.dart';
import 'package:shop_app/models/productCategories.dart';

abstract class CatalogServiceContract {
	Future<AllCategories> getCategories();
  Future<AllProducts> getProducts();

  Future<CategoryItem> getCategory(int id);

  Future<int> getProductsCount();

  Future<ProductCategories>getProductCategories(int productid) {}
}