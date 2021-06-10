import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Categories.dart' as cate;
import 'package:shop_app/providers/catalog_provider.dart';
import 'package:shop_app/screens/category/category_detail_screen.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/screens/categories/categories_screen.dart';

import '../../../size_config.dart';

class AllCategoriesSection extends StatelessWidget {
  const AllCategoriesSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CatalogProvider>(context);
    Future<cate.AllCategories> allCategories =
        categoryProvider.getAllCategories();
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Categories",
            press: () {
              Navigator.pushNamed(context, CategoriesScreen.routeName);
            },
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        FutureBuilder<cate.AllCategories>(
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.data.categories.length > 0) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...snapshot.data.categories
                        .map((e) => _buildAcat(e,context))
                        .toList(),
                  ],
                ),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
          future: allCategories,
        ),
      ],
    );
  }

  _buildAcat(cate.Categories e,BuildContext context) {
    if (e.published && e.parentCategoryId == 0) {
      return CategoryCard(
          category: e.name,
          image: e.image.src,
          numOfBrands: e.id,
          press: (){
            Navigator.pushNamed(context, CategoryDetailScreen.routeName,arguments:CatDetailsArguments(catId: e.id) );
          });
    } else {
      return SizedBox();
    }
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
