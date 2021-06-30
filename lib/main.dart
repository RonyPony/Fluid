import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/advertisement_provider.dart';
import 'package:shop_app/providers/authentication_provider.dart';
import 'package:shop_app/providers/cart_provider.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/services/address_service.dart';
import 'package:shop_app/services/advertisement_service.dart';
import 'package:shop_app/services/authentication_service.dart';
import 'package:shop_app/theme.dart';
import 'package:shop_app/providers/catalog_provider.dart';
import 'package:shop_app/services/catalog_service.dart';
import 'package:wp_json_api/wp_json_api.dart';
import 'services/user_service.dart';

void main() {
  WPJsonAPI.instance
      .initWith(baseUrl: "http://ronycruz.myartsonline.com/fluid2");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) =>
                AuthenticationProvider(AuthenticationService(), UserService()),
          ),
          ChangeNotifierProvider(
            create: (context) => CatalogProvider(CatalogService()),
          ),
          ChangeNotifierProvider(
            create: (context) => AdvertisementProvider(AdvertisementService()),
          ),
          ChangeNotifierProvider(
              create: (context) => ShoppingCartProvider(
                  AuthenticationService(), AddressService())),
        ],
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Stores',
            theme: theme(),
            initialRoute: SplashScreen.routeName,
            routes: routes,
            builder: EasyLoading.init(),
          ),
        ));
  }
}
