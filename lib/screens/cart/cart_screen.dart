import 'package:flutter/material.dart';
import 'package:shop_app/helper/other_helpers.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/providers/cart_provider.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    var shoppingCartProvider =
        getProvider<ShoppingCartProvider>(listen: true, context: context);

    List<CartItem> shoppingCartItems = shoppingCartProvider.shoppingCartItems;

    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${shoppingCartItems.length >= 1 ? shoppingCartItems.length : 'no'} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
