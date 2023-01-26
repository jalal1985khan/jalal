import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  width: size.width,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse224,
                                            height: getVerticalSize(110.00),
                                            width: getHorizontalSize(284.00),
                                            alignment: Alignment.centerRight),
                                        Padding(
                                            padding: getPadding(top: 151),
                                            child: Text("lbl_shopsie".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlayfairDisplayRomanMedium65
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.13)))),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Text(
                                                "msg_the_best_way_to".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtLatoRegular14
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.25)))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse224307x137,
                                            height: getVerticalSize(307.00),
                                            width: getHorizontalSize(137.00),
                                            alignment: Alignment.centerLeft,
                                            margin: getMargin(top: 145))
                                      ]))))
                    ]))));
  }
}
