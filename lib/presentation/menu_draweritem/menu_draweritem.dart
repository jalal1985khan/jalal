import 'controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatelessWidget {
  MenuDraweritem(this.controller);

  MenuController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            padding: getPadding(left: 67, top: 34, right: 67, bottom: 34),
            decoration: AppDecoration.fillWhiteA700,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 58, top: 36),
                      child: Text("lbl_cart".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoRegular18.copyWith(
                              letterSpacing: getHorizontalSize(1.08),
                              height: getVerticalSize(1.25)))),
                  Padding(
                      padding: getPadding(left: 44, top: 29),
                      child: Text("lbl_profile".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoRegular18.copyWith(
                              letterSpacing: getHorizontalSize(1.08),
                              height: getVerticalSize(1.25)))),
                  Padding(
                      padding: getPadding(left: 33, top: 29),
                      child: Text("lbl_clothing".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoRegular18.copyWith(
                              letterSpacing: getHorizontalSize(1.08),
                              height: getVerticalSize(1.25)))),
                  Padding(
                      padding: getPadding(left: 51, top: 29),
                      child: Text("lbl_shoes".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoRegular18.copyWith(
                              letterSpacing: getHorizontalSize(1.08),
                              height: getVerticalSize(1.25)))),
                  Spacer(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgEye26x26,
                            height: getSize(26.00),
                            width: getSize(26.00)),
                        CustomImageView(
                            svgPath: ImageConstant.imgFacebook26x26,
                            height: getSize(26.00),
                            width: getSize(26.00),
                            onTap: () {
                              onTapImgFacebook();
                            }),
                        CustomImageView(
                            svgPath: ImageConstant.imgSettings,
                            height: getSize(26.00),
                            width: getSize(26.00)),
                        CustomImageView(
                            svgPath:
                                ImageConstant.img5279123tweettwittertwitter,
                            height: getSize(26.00),
                            width: getSize(26.00))
                      ])
                ])));
  }

  onTapImgFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }
}
