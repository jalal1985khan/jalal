import '../controller/main_landing_controller.dart';
import '../models/slidershoesonheels_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SlidershoesonheelsItemWidget extends StatelessWidget {
  SlidershoesonheelsItemWidget(this.slidershoesonheelsItemModelObj);

  SlidershoesonheelsItemModel slidershoesonheelsItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 187,
        bottom: 1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: getVerticalSize(
              236.00,
            ),
            width: getHorizontalSize(
              171.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                8.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 10,
            ),
            child: Text(
              "lbl_shoes_on_heels".tr,
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
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Text(
              "lbl_28_99".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtLatoSemiBold13.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
