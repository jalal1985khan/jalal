import '../main_landing_screen/widgets/listgroup_item_widget.dart';
import '../main_landing_screen/widgets/listprice_three_item_widget.dart';
import '../main_landing_screen/widgets/slidershoesonheels_item_widget.dart';
import 'controller/main_landing_controller.dart';
import 'models/listgroup_item_model.dart';
import 'models/listprice_three_item_model.dart';
import 'models/slidershoesonheels_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:jalal_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jalal_s_application1/widgets/custom_button.dart';
import 'package:jalal_s_application1/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainLandingScreen extends GetWidget<MainLandingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              margin: getMargin(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    decoration: AppDecoration.fillGray200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: getVerticalSize(
                            318.00,
                          ),
                          width: getHorizontalSize(
                            278.00,
                          ),
                          margin: getMargin(
                            top: 58,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage61,
                                height: getVerticalSize(
                                  318.00,
                                ),
                                width: getHorizontalSize(
                                  278.00,
                                ),
                                radius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      200.00,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      200.00,
                                    ),
                                  ),
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 3,
                                    right: 3,
                                    bottom: 6,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_season_sale".tr.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlayfairDisplayRomanRegular48
                                            .copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  "lbl_up_to".tr.toUpperCase(),
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w500,
                                                height: getVerticalSize(
                                                  1.23,
                                                ),
                                              ),
                                            ),
                                            TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                color: ColorConstant.gray90001,
                                                fontSize: getFontSize(
                                                  48,
                                                ),
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w500,
                                                height: getVerticalSize(
                                                  1.23,
                                                ),
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  "lbl_60_off".tr.toUpperCase(),
                                              style: TextStyle(
                                                color: ColorConstant.gray200,
                                                fontSize: getFontSize(
                                                  40,
                                                ),
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w500,
                                                height: getVerticalSize(
                                                  1.23,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            134.00,
                          ),
                          margin: getMargin(
                            top: 42,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    48.00,
                                  ),
                                  width: getHorizontalSize(
                                    134.00,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        67.00,
                                      ),
                                    ),
                                    border: Border.all(
                                      color: ColorConstant.gray90001,
                                      width: getHorizontalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    bottom: 8,
                                  ),
                                  child: Text(
                                    "lbl_shop_now".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlayfairDisplayRomanRegular20
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage60,
                          height: getVerticalSize(
                            123.00,
                          ),
                          width: getHorizontalSize(
                            390.00,
                          ),
                          margin: getMargin(
                            top: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 66,
                    ),
                    child: Text(
                      "lbl_trending_now".tr.toUpperCase(),
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        66.00,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            left: 16,
                            top: 34,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                12.00,
                              ),
                            );
                          },
                          itemCount: controller.mainLandingModelObj.value
                              .listgroupItemList.length,
                          itemBuilder: (context, index) {
                            ListgroupItemModel model = controller
                                .mainLandingModelObj
                                .value
                                .listgroupItemList[index];
                            return ListgroupItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 32,
                    ),
                    child: Obx(
                      () => CarouselSlider.builder(
                        options: CarouselOptions(
                          height: getVerticalSize(
                            288.00,
                          ),
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.silderIndex.value = index;
                          },
                        ),
                        itemCount: controller.mainLandingModelObj.value
                            .slidershoesonheelsItemList.length,
                        itemBuilder: (context, index, realIndex) {
                          SlidershoesonheelsItemModel model = controller
                              .mainLandingModelObj
                              .value
                              .slidershoesonheelsItemList[index];
                          return SlidershoesonheelsItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => Container(
                      height: getVerticalSize(
                        4.00,
                      ),
                      margin: getMargin(
                        top: 30,
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: controller.silderIndex.value,
                        count: controller.mainLandingModelObj.value
                            .slidershoesonheelsItemList.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 4,
                          activeDotColor: ColorConstant.indigoA200,
                          dotColor: ColorConstant.gray200,
                          dotHeight: getVerticalSize(
                            4.00,
                          ),
                          dotWidth: getHorizontalSize(
                            15.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 50,
                    ),
                    child: Text(
                      "msg_actual_categori".tr.toUpperCase(),
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
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle7,
                    height: getVerticalSize(
                      386.00,
                    ),
                    width: getHorizontalSize(
                      358.00,
                    ),
                    margin: getMargin(
                      top: 34,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_outerwear".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoBold15.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "msg_raincoats_swea".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular12.copyWith(
                        height: getVerticalSize(
                          1.25,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle7386x358,
                    height: getVerticalSize(
                      386.00,
                    ),
                    width: getHorizontalSize(
                      358.00,
                    ),
                    margin: getMargin(
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_leather_shoes".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoBold15.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "msg_shoes_sandals".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular12.copyWith(
                        height: getVerticalSize(
                          1.25,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle8,
                    height: getVerticalSize(
                      386.00,
                    ),
                    width: getHorizontalSize(
                      358.00,
                    ),
                    margin: getMargin(
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Text(
                      "lbl_light_dresses".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoBold15.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Text(
                      "msg_evening_casual".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtLatoRegular12.copyWith(
                        height: getVerticalSize(
                          1.25,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 62,
                    ),
                    child: Text(
                      "msg_only_trusted_br".tr.toUpperCase(),
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: getMargin(
                        left: 16,
                        top: 34,
                      ),
                      padding: getPadding(
                        top: 4,
                        bottom: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage15,
                            height: getVerticalSize(
                              58.00,
                            ),
                            width: getHorizontalSize(
                              79.00,
                            ),
                            margin: getMargin(
                              top: 2,
                              bottom: 2,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage16,
                            height: getVerticalSize(
                              42.00,
                            ),
                            width: getHorizontalSize(
                              36.00,
                            ),
                            margin: getMargin(
                              top: 10,
                              bottom: 10,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage17,
                            height: getSize(
                              40.00,
                            ),
                            width: getSize(
                              40.00,
                            ),
                            margin: getMargin(
                              top: 11,
                              bottom: 11,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage18,
                            height: getVerticalSize(
                              39.00,
                            ),
                            width: getHorizontalSize(
                              52.00,
                            ),
                            margin: getMargin(
                              top: 11,
                              bottom: 12,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage19,
                            height: getVerticalSize(
                              62.00,
                            ),
                            width: getHorizontalSize(
                              7.00,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin: getMargin(
                      top: 63,
                    ),
                    padding: getPadding(
                      left: 19,
                      top: 36,
                      right: 19,
                      bottom: 36,
                    ),
                    decoration: AppDecoration.fillBlack900,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            297.00,
                          ),
                          child: Text(
                            "lbl_new_arrival".tr.toUpperCase(),
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtPlayfairDisplayRomanRegular60
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                8.40,
                              ),
                              height: getVerticalSize(
                                0.75,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "lbl_fall_2021".tr.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoSemiBold14.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            350.00,
                          ),
                          margin: getMargin(
                            top: 39,
                          ),
                          padding: getPadding(
                            left: 18,
                            right: 18,
                          ),
                          decoration:
                              AppDecoration.outlineBluegray10063.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL279,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  312.00,
                                ),
                                margin: getMargin(
                                  top: 15,
                                ),
                                padding: getPadding(
                                  left: 10,
                                  right: 10,
                                ),
                                decoration:
                                    AppDecoration.outlineBluegray10075.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL279,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle1381,
                                      height: getVerticalSize(
                                        354.00,
                                      ),
                                      width: getHorizontalSize(
                                        292.00,
                                      ),
                                      radius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          getHorizontalSize(
                                            279.00,
                                          ),
                                        ),
                                        topRight: Radius.circular(
                                          getHorizontalSize(
                                            279.00,
                                          ),
                                        ),
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          height: 48,
                          width: 174,
                          text: "lbl_explore".tr.toUpperCase(),
                          margin: getMargin(
                            top: 40,
                            bottom: 3,
                          ),
                          variant: ButtonVariant.FillWhiteA700,
                          fontStyle: ButtonFontStyle.LatoSemiBold13,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 66,
                    ),
                    child: Text(
                      "msg_recomended_look".tr.toUpperCase(),
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: getPadding(
                        left: 16,
                        top: 36,
                      ),
                      child: IntrinsicWidth(
                        child: Container(
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_gender".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: getVerticalSize(
                                            1.25,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray60002,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: getVerticalSize(
                                            1.25,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_female".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray60002,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
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
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowdownGray60002,
                                height: getSize(
                                  12.00,
                                ),
                                width: getSize(
                                  12.00,
                                ),
                                margin: getMargin(
                                  left: 4,
                                  top: 2,
                                  bottom: 4,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 1,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_style".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: getVerticalSize(
                                            1.25,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray60002,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: getVerticalSize(
                                            1.25,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_partywear".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray60002,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
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
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowdownGray60002,
                                height: getSize(
                                  12.00,
                                ),
                                width: getSize(
                                  12.00,
                                ),
                                margin: getMargin(
                                  left: 4,
                                  top: 2,
                                  bottom: 4,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 1,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_price_range".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: getVerticalSize(
                                            1.25,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray60002,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: getVerticalSize(
                                            1.25,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_all".tr,
                                        style: TextStyle(
                                          color: ColorConstant.gray60002,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
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
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowdownGray60002,
                                height: getSize(
                                  12.00,
                                ),
                                width: getSize(
                                  12.00,
                                ),
                                margin: getMargin(
                                  left: 4,
                                  top: 2,
                                  bottom: 4,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      834.00,
                    ),
                    width: getHorizontalSize(
                      358.00,
                    ),
                    margin: getMargin(
                      top: 32,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1385,
                          height: getVerticalSize(
                            421.00,
                          ),
                          width: getHorizontalSize(
                            358.00,
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: getPadding(
                              left: 16,
                              top: 9,
                              right: 16,
                              bottom: 9,
                            ),
                            decoration: AppDecoration.outlineGray2001,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 467,
                                  ),
                                  child: Text(
                                    "lbl_in_this_look".tr.toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtLatoSemiBold14Gray90001
                                        .copyWith(
                                      height: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 35,
                                    right: 70,
                                  ),
                                  child: Obx(
                                    () => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            243.00,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray200,
                                          ),
                                        );
                                      },
                                      itemCount: controller.mainLandingModelObj
                                          .value.listpriceThreeItemList.length,
                                      itemBuilder: (context, index) {
                                        ListpriceThreeItemModel model =
                                            controller.mainLandingModelObj.value
                                                .listpriceThreeItemList[index];
                                        return ListpriceThreeItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  height: 48,
                                  width: 326,
                                  text: "lbl_buy_it_now".tr.toUpperCase(),
                                  margin: getMargin(
                                    top: 32,
                                  ),
                                  variant: ButtonVariant.OutlineIndigoA200,
                                  fontStyle: ButtonFontStyle.LatoSemiBold13,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgClock,
                    height: getVerticalSize(
                      20.00,
                    ),
                    width: getHorizontalSize(
                      72.00,
                    ),
                    margin: getMargin(
                      top: 32,
                    ),
                  ),
                  Container(
                    width: size.width,
                    margin: getMargin(
                      top: 64,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 32,
                      right: 16,
                      bottom: 32,
                    ),
                    decoration: AppDecoration.fillBlue50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage14,
                          height: getVerticalSize(
                            204.00,
                          ),
                          width: getHorizontalSize(
                            231.00,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 42,
                          ),
                          child: Text(
                            "lbl_get_20_off".tr.toUpperCase(),
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
                        Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Text(
                            "msg_leave_your_emai".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLatoRegular14Gray60003.copyWith(
                              height: getVerticalSize(
                                1.25,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 28,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextFormField(
                                width: 234,
                                focusNode: FocusNode(),
                                controller: controller.groupThreeController,
                                hintText: "lbl_email".tr,
                                variant: TextFormFieldVariant.FillWhiteA700ab,
                                padding: TextFormFieldPadding.PaddingAll11,
                                fontStyle: TextFormFieldFontStyle.LatoMedium13,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress,
                              ),
                              CustomButton(
                                height: 40,
                                width: 114,
                                text: "lbl_subscribe".tr,
                                padding: ButtonPadding.PaddingAll12,
                                fontStyle: ButtonFontStyle.LatoMedium13,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 4,
            bottom: 21,
          ),
          decoration: AppDecoration.fillGray90001,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  left: 12,
                  top: 24,
                  right: 12,
                  bottom: 24,
                ),
                decoration: AppDecoration.fillGray90001,
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_2021_shopsie".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoRegular12Gray600.copyWith(
                          height: getVerticalSize(
                            1.25,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: Text(
                        "msg_privacy_cooki".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoRegular12Gray200.copyWith(
                          height: getVerticalSize(
                            1.25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 32,
                        right: 10,
                        bottom: 2,
                      ),
                      child: Text(
                        "lbl_ts_cs".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtLatoRegular12Gray200.copyWith(
                          height: getVerticalSize(
                            1.25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
