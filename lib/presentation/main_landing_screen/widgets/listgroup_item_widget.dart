import '../controller/main_landing_controller.dart';
import '../models/listgroup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget(this.listgroupItemModelObj);

  ListgroupItemModel listgroupItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            48.00,
          ),
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 16,
            top: 7,
            right: 16,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillIndigoA200.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder8,
          ),
          child: Text(
            "lbl_all".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtLatoRegular13.copyWith(
              letterSpacing: getHorizontalSize(
                0.39,
              ),
              height: getVerticalSize(
                1.25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
