import '../product_page_screen/widgets/sliderrectangleeleven_item_widget.dart';
import 'controller/product_page_controller.dart';
import 'models/sliderrectangleeleven_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:jalal_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jalal_s_application1/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPageScreen extends GetWidget<ProductPageController> {
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
                    onTap: onTapArrowleft1),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => CarouselSlider.builder(
                          options: CarouselOptions(
                              height: getVerticalSize(436.00),
                              initialPage: 0,
                              autoPlay: true,
                              viewportFraction: 1.0,
                              enableInfiniteScroll: false,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, reason) {
                                controller.silderIndex.value = index;
                              }),
                          itemCount: controller.productPageModelObj.value
                              .sliderrectangleelevenItemList.length,
                          itemBuilder: (context, index, realIndex) {
                            SliderrectangleelevenItemModel model = controller
                                .productPageModelObj
                                .value
                                .sliderrectangleelevenItemList[index];
                            return SliderrectangleelevenItemWidget(model);
                          })),
                      Align(
                          alignment: Alignment.center,
                          child: Obx(() => Container(
                              height: getVerticalSize(4.00),
                              margin: getMargin(top: 10),
                              child: AnimatedSmoothIndicator(
                                  activeIndex: controller.silderIndex.value,
                                  count: controller.productPageModelObj.value
                                      .sliderrectangleelevenItemList.length,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 4,
                                      activeDotColor: ColorConstant.indigoA200,
                                      dotColor: ColorConstant.gray600,
                                      dotHeight: getVerticalSize(4.00),
                                      dotWidth: getHorizontalSize(15.00)))))),
                      Padding(
                          padding: getPadding(left: 16, top: 13),
                          child: Text("msg_print_maxi_dres".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLatoRegular24.copyWith(
                                  letterSpacing: getHorizontalSize(0.72),
                                  height: getVerticalSize(1.22)))),
                      Padding(
                          padding: getPadding(left: 16, top: 15),
                          child: Text("lbl_99_30".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLatoMedium20
                                  .copyWith(height: getVerticalSize(1.42)))),
                      Padding(
                          padding: getPadding(left: 16, top: 28),
                          child: Text("lbl_product_details".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLatoSemiBold14Gray90001
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(356.00),
                              margin: getMargin(top: 17, bottom: 5),
                              child: Text("msg_mini_dress_with".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtLatoRegular14Gray700
                                      .copyWith(
                                          height: getVerticalSize(1.25)))))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 42),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          height: 48,
                          width: 358,
                          text: "lbl_add_to_cart".tr.toUpperCase())
                    ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
