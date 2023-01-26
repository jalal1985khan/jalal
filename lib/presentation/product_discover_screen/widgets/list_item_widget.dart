import '../controller/product_discover_controller.dart';
import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

  var controller = Get.find<ProductDiscoverController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage3,
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
        Container(
          width: getHorizontalSize(
            158.00,
          ),
          margin: getMargin(
            top: 10,
          ),
          child: Text(
            "msg_pull_bear_exclu".tr,
            maxLines: null,
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
            top: 10,
          ),
          child: Text(
            "lbl_13_99".tr.toUpperCase(),
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
    );
  }
}
