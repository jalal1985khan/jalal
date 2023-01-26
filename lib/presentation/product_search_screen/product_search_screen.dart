import '../product_search_screen/widgets/list1_item_widget.dart';
import 'controller/product_search_controller.dart';
import 'models/list1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/widgets/custom_search_view.dart';

class ProductSearchScreen extends GetWidget<ProductSearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 11,
            right: 11,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomSearchView(
                width: 368,
                focusNode: FocusNode(),
                controller: controller.group5609Controller,
                hintText: "lbl_sl_iders".tr.toUpperCase(),
                prefix: Container(
                  margin: getMargin(
                    left: 10,
                    top: 18,
                    right: 6,
                    bottom: 18,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56.00,
                  ),
                ),
                suffix: Padding(
                  padding: EdgeInsets.only(
                    right: getHorizontalSize(
                      15.00,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      controller.group5609Controller.clear;
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    56.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 5,
                  top: 29,
                  right: 5,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        199.00,
                      ),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(
                        16.00,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        16.00,
                      ),
                    ),
                    physics: BouncingScrollPhysics(),
                    itemCount: controller
                        .productSearchModelObj.value.list1ItemList.length,
                    itemBuilder: (context, index) {
                      List1ItemModel model = controller
                          .productSearchModelObj.value.list1ItemList[index];
                      return List1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
