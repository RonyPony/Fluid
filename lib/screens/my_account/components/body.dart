import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/categories/components/top_rounded_container.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/user_info/userinfo_screen.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: TopRoundedContainer(
        color: kPrimaryColor.withOpacity(0.2),
              child: Column(
          children: [
            Center(
              child: Text('My account screen'),
            ),
             ProfileMenu(
              text: "My info",
              icon: "assets/icons/User.svg",
              press: () {
                Navigator.pushNamed(context, UserInfoScreen.routeName);
              },
            ),
            
            DefaultButton(
              text: "Go back",
              icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),
              press: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
