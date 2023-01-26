import '../controller/product_search_controller.dart';
import '../models/list1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  List1ItemWidget(this.list1ItemModelObj);

  List1ItemModel list1ItemModelObj;

  var controller = Get.find<ProductSearchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage9,
          height: getSize(
            171.00,
          ),
          width: getSize(
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
            top: 11,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_long".tr,
                  style: TextStyle(
                    color: ColorConstant.gray90001,
                    fontSize: getFontSize(
                      13,
                    ),
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    letterSpacing: getHorizontalSize(
                      0.39,
                    ),
                    height: getVerticalSize(
                      1.25,
                    ),
                  ),
                ),
                TextSpan(
                  text: "lbl_sl".tr,
                  style: TextStyle(
                    color: ColorConstant.gray90001,
                    fontSize: getFontSize(
                      13,
                    ),
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w600,
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
                TextSpan(
                  text: "lbl_eeve_t_shirt".tr,
                  style: TextStyle(
                    color: ColorConstant.gray90001,
                    fontSize: getFontSize(
                      13,
                    ),
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
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
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
