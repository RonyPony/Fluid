

import 'package:shop_app/models/client_address.dart';

abstract class AddressServiceContract {
  Future<ClientAddress> getSelectedAddress();

  Future<ClientAddress> saveSelectedAddress(Map data);
}