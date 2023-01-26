import 'package:get/get.dart';
import 'listgroup_item_model.dart';
import 'slidershoesonheels_item_model.dart';
import 'listprice_three_item_model.dart';

class MainLandingModel {
  RxList<ListgroupItemModel> listgroupItemList =
      RxList.filled(5, ListgroupItemModel());

  RxList<SlidershoesonheelsItemModel> slidershoesonheelsItemList =
      RxList.filled(2, SlidershoesonheelsItemModel());

  RxList<ListpriceThreeItemModel> listpriceThreeItemList =
      RxList.filled(3, ListpriceThreeItemModel());
}
