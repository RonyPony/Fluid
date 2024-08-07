import 'package:flutter/services.dart';
import 'package:shop_app/helper/network_util.dart';
import 'package:shop_app/contracts/catalog_service_contract.dart';
import 'package:shop_app/models/AllProducts.dart';
import 'package:shop_app/models/Categories.dart';
import 'package:shop_app/models/category_item.dart';
import 'package:shop_app/models/productCategories.dart';

class CatalogService implements CatalogServiceContract {
  @override
  Future<AllCategories> getCategories() async {
    Future<AllCategories> categories;
    try {
      final client = NetworkUtil.getClient();

      final response = await client.get('categories');
      if (response.statusCode < 400) {
        AllCategories ex = AllCategories.fromJson(response.data);
        return ex;
      } else {
        throw PlatformException(
            code: "${response.statusCode}", message: "invalidEmail");
      }
    } catch (e) {
      throw Exception('error');
    }
  }

  Future<AllProducts> getProducts() async {
    try {
      final client = NetworkUtil.getClient();

      final response = await client.get('Products');
      if (response.statusCode < 400) {
        AllProducts ex = AllProducts.fromJson(response.data);
        return ex;
      } else {
        throw PlatformException(
            code: "${response.statusCode}", message: "invalidEmail");
      }
    } catch (e) {
      throw Exception('error');
    }
  }

  @override
  Future<CategoryItem> getCategory(int id) async {
    Future<CategoryItem> category;
    try {
      final client = NetworkUtil.getClient();

      final response = await client.get('categories/$id');
      if (response.statusCode < 400) {
        CategoryItem ex = CategoryItem.fromJson(response.data);
        return ex;
      } else {
        throw PlatformException(
            code: "${response.statusCode}", message: "invalidEmail");
      }
    } catch (e) {
      throw Exception('error');
    }
  }

  @override
  Future<int> getProductsCount()async{
     try {
      final client = NetworkUtil.getClient();

      final response = await client.get('Products/count');
      if (response.statusCode < 400) {
        int ex = response.data['count'].toInt();
        return ex;
      } else {
        throw PlatformException(
            code: "${response.statusCode}", message: "invalidEmail");
      }
    } catch (e) {
      throw Exception('error');
    }
  }

  @override
  Future<ProductCategories>getProductCategories(int productid)async{
    try {
      final client = NetworkUtil.getTokenClient();
      final response = await client.get('categories/porproducto/$productid');
      if (response.statusCode < 400) {
        //ProductCategories ex = ProductCategories.fromJson(response.data);
        return response.data;
      } else {
        throw PlatformException(
            code: "${response.statusCode}", message: "error geting categories");
      }
    } catch (e) {
      throw Exception('error');
    }
  }
}
