import '../product_discover_screen/widgets/list_item_widget.dart';
import 'controller/product_discover_controller.dart';
import 'models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:jalal_s_application1/widgets/app_bar/custom_app_bar.dart';

class ProductDiscoverScreen extends GetWidget<ProductDiscoverController> {
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
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup819,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppBar(
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
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 22,
                  right: 16,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        309.00,
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
                        .productDiscoverModelObj.value.listItemList.length,
                    itemBuilder: (context, index) {
                      ListItemModel model = controller
                          .productDiscoverModelObj.value.listItemList[index];
                      return ListItemWidget(
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
