import 'package:flutter/material.dart';
import 'package:shop_app/contracts/advertisementServiceContract.dart';
import 'package:shop_app/models/FluidXstores_media.dart';

class AdvertisementProvider with ChangeNotifier {
  AdvertisementServiceContract _advertisementService;

  AdvertisementProvider(this._advertisementService);

  Future<List<FluidXstoreMedia>> getAll() {
    try {
      var result = _advertisementService.getAll();
      notifyListeners();

      return result;
    } catch (e) {
      notifyListeners();

      throw e;
    }
  }
}
