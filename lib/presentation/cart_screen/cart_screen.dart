import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:jalal_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jalal_s_application1/widgets/custom_button.dart';

class CartScreen extends GetWidget<CartController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            64.00,
          ),
          leadingWidth: 40,
          leading: AppbarImage(
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 16,
              top: 20,
              bottom: 20,
            ),
          ),
          centerTitle: true,
          title: AppbarImage(
            height: getVerticalSize(
              16.00,
            ),
            width: getHorizontalSize(
              59.00,
            ),
            svgPath: ImageConstant.imgSignal,
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                20.00,
              ),
              width: getHorizontalSize(
                100.00,
              ),
              svgPath: ImageConstant.imgCar,
              margin: getMargin(
                left: 16,
                top: 22,
                right: 16,
                bottom: 22,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: size.width,
          padding: getPadding(
            top: 24,
            bottom: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 26,
                  ),
                  child: Text(
                    "lbl_my_cart".tr.toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtLatoRegular18.copyWith(
                      letterSpacing: getHorizontalSize(
                        1.08,
                      ),
                      height: getVerticalSize(
                        1.25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 26,
                  right: 16,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          358.00,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray200,
                        ),
                      );
                    },
                    itemCount:
                        controller.cartModelObj.value.cartItemList.length,
                    itemBuilder: (context, index) {
                      CartItemModel model =
                          controller.cartModelObj.value.cartItemList[index];
                      return CartItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: size.width,
                margin: getMargin(
                  top: 98,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray200,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 21,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 2,
                      ),
                      child: Text(
                        "lbl_sub_total".tr.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoSemiBold14Gray90001.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_111_80".tr.toUpperCase(),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular18.copyWith(
                        letterSpacing: getHorizontalSize(
                          1.08,
                        ),
                        height: getVerticalSize(
                          1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: size.width,
                margin: getMargin(
                  top: 21,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray200,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 32,
            right: 32,
            bottom: 64,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                height: 48,
                width: 326,
                text: "lbl_pay_111_80".tr.toUpperCase(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
