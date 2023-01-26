import '../controller/profile_address_details_controller.dart';
import '../models/listhomeaddress_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListhomeaddressItemWidget extends StatelessWidget {
  ListhomeaddressItemWidget(this.listhomeaddressItemModelObj);

  ListhomeaddressItemModel listhomeaddressItemModelObj;

  var controller = Get.find<ProfileAddressDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 25,
        right: 15,
        bottom: 25,
      ),
      decoration: AppDecoration.fillGray5002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_home_address".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoMedium13.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgEdit,
                  height: getSize(
                    16.00,
                  ),
                  width: getSize(
                    16.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                  ),
                  child: Text(
                    "lbl_edit".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoMedium13IndigoA200.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_address_1".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoRegular13Gray600.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.39,
                      ),
                      height: getVerticalSize(
                        1.25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "lbl_amoy_st_592".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoRegular13Gray90001.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.39,
                      ),
                      height: getVerticalSize(
                        1.25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 18,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_address_2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoRegular13Gray600.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.39,
                      ),
                      height: getVerticalSize(
                        1.25,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "lbl_amoy_st_592".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoRegular13Gray90001.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.39,
                      ),
                      height: getVerticalSize(
                        1.25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 19,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_city".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular13Gray600.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.39,
                    ),
                    height: getVerticalSize(
                      1.25,
                    ),
                  ),
                ),
                Text(
                  "lbl_los_angeles".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular13Gray90001.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.39,
                    ),
                    height: getVerticalSize(
                      1.25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 18,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_postal_code2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular13Gray600.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.39,
                    ),
                    height: getVerticalSize(
                      1.25,
                    ),
                  ),
                ),
                Text(
                  "lbl_8829383".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular13Gray90001.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.39,
                    ),
                    height: getVerticalSize(
                      1.25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
