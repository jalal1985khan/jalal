import 'controller/profile_profile_info_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/presentation/profile_address_details_page/profile_address_details_page.dart';
import 'package:jalal_s_application1/presentation/profile_my_orders_page/profile_my_orders_page.dart';
import 'package:jalal_s_application1/presentation/profile_profile_info_page/profile_profile_info_page.dart';
import 'package:jalal_s_application1/presentation/profile_security_page/profile_security_page.dart';
import 'package:jalal_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:jalal_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jalal_s_application1/widgets/custom_icon_button.dart';

class ProfileProfileInfoTabContainerScreen
    extends GetWidget<ProfileProfileInfoTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(64.00),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.img25326b4294154be2a5c5f0d7c083e855,
                    margin: getMargin(left: 16, top: 20, bottom: 20),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(16.00),
                    width: getHorizontalSize(59.00),
                    svgPath: ImageConstant.imgSignal),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(100.00),
                      svgPath: ImageConstant.imgCar,
                      margin:
                          getMargin(left: 16, top: 22, right: 16, bottom: 22))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          padding: getPadding(
                              left: 98, top: 32, right: 98, bottom: 32),
                          decoration: AppDecoration.fillGray5001,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(116.00),
                                    width: getHorizontalSize(100.00),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgProfileimage,
                                              height: getSize(100.00),
                                              width: getSize(100.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(50.00)),
                                              alignment: Alignment.topCenter),
                                          CustomIconButton(
                                              height: 32,
                                              width: 32,
                                              margin: getMargin(left: 31),
                                              alignment: Alignment.bottomLeft,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgC57ba486ba4c404b89f72e3001eb7290))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Text(
                                        "lbl_savannah_nguyen".tr.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoRegular18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(1.08),
                                                height:
                                                    getVerticalSize(1.25)))),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Text("msg_allentown_new".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoRegular14
                                            .copyWith(
                                                height: getVerticalSize(1.25))))
                              ])),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 18),
                          child: TabBar(
                              controller: controller.group5706Controller,
                              tabs: [
                                Tab(text: "lbl_profile_info".tr),
                                Tab(text: "lbl_my_orders".tr),
                                Tab(text: "lbl_security".tr),
                                Tab(text: "lbl_address_details".tr),
                                Tab(text: "lbl_log_out".tr)
                              ],
                              labelColor: ColorConstant.indigoA200,
                              unselectedLabelColor: ColorConstant.gray600)),
                      Container(
                          margin: getMargin(
                              left: 16, top: 36, right: 16, bottom: 5),
                          height: getVerticalSize(366.00),
                          child: TabBarView(
                              controller: controller.group5706Controller,
                              children: [
                                ProfileProfileInfoPage(),
                                ProfileMyOrdersPage(),
                                ProfileSecurityPage(),
                                ProfileAddressDetailsPage(),
                                ProfileAddressDetailsPage()
                              ]))
                    ]))));
  }

  onTapArrowleft() {
    Get.back();
  }
}
