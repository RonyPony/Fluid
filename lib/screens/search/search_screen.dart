import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/search/components/search_field.dart';


class SearchScreen extends StatelessWidget {
  static String routeName = "/search";

  void initialize() async {
   
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.search),
    );
  }
}
