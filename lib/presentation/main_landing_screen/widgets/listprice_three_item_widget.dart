import '../controller/main_landing_controller.dart';
import '../models/listprice_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListpriceThreeItemWidget extends StatelessWidget {
  ListpriceThreeItemWidget(this.listpriceThreeItemModelObj);

  ListpriceThreeItemModel listpriceThreeItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage56x56,
          height: getSize(
            56.00,
          ),
          width: getSize(
            56.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              28.00,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 7,
            bottom: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_43_90".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtLatoMedium13.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  "msg_cotton_black_dr".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtLatoRegular12Gray600.copyWith(
                    height: getVerticalSize(
                      1.25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
