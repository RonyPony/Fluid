import 'package:shop_app/models/FluidXstores_media.dart';

abstract class AdvertisementServiceContract {
  Future<List<FluidXstoreMedia>> getAll();
}
