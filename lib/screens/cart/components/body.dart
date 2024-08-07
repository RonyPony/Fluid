import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/helper/other_helpers.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/providers/cart_provider.dart';

import '../../../size_config.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    
     var shoppingCartProvider =
        getProvider<ShoppingCartProvider>(listen: true, context: context);

    List<CartItem> shoppingCartItems =
        shoppingCartProvider.shoppingCartItems;

    return Padding(
        padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: ListView.builder(
    itemCount: shoppingCartItems.length,
    itemBuilder: (context, index) => Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Dismissible(
        key: Key(shoppingCartItems[index].product.id.toString()),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          setState(() {
            shoppingCartItems.removeAt(index);
          });
        },
        background: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xFFFFE6E6),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Spacer(),
              SvgPicture.asset("assets/icons/Trash.svg"),
            ],
          ),
        ),
        child: CartCard(cart: shoppingCartItems[index]),
      ),
    ),
        ),
      );
  }
}
