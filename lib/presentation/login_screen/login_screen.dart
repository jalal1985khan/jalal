import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/widgets/custom_button.dart';
import 'package:jalal_s_application1/widgets/custom_text_form_field.dart';
import 'package:jalal_s_application1/domain/facebookauth/facebook_auth_helper.dart';
import 'package:jalal_s_application1/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: getHorizontalSize(261.00),
                          margin: getMargin(left: 8),
                          child: Text("msg_welcome_back_g".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLatoBold24.copyWith(
                                  letterSpacing: getHorizontalSize(0.72),
                                  height: getVerticalSize(1.22)))),
                      CustomTextFormField(
                          width: 358,
                          focusNode: FocusNode(),
                          controller: controller.group5614Controller,
                          hintText: "msg_enter_your_emai".tr,
                          margin: getMargin(top: 37),
                          textInputType: TextInputType.emailAddress),
                      Container(
                          width: getHorizontalSize(358.00),
                          margin: getMargin(top: 15),
                          padding: getPadding(
                              left: 23, top: 8, right: 23, bottom: 8),
                          decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Obx(() => CustomTextFormField(
                                    width: 310,
                                    focusNode: FocusNode(),
                                    controller: controller.group5615Controller,
                                    hintText: "msg_enter_your_pass".tr,
                                    margin: getMargin(top: 8),
                                    variant: TextFormFieldVariant.None,
                                    padding: TextFormFieldPadding.FillGray50,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    suffix: InkWell(
                                        onTap: () {
                                          controller.isShowPassword.value =
                                              !controller.isShowPassword.value;
                                        },
                                        child: Container(
                                            margin: getMargin(left: 12),
                                            child: CustomImageView(
                                                svgPath: controller
                                                        .isShowPassword.value
                                                    ? ImageConstant.imgEye
                                                    : ImageConstant.imgEye))),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(24.00)),
                                    isObscureText:
                                        !controller.isShowPassword.value))
                              ])),
                      CustomButton(
                          height: 48,
                          width: 358,
                          text: "lbl_login".tr,
                          margin: getMargin(top: 24),
                          padding: ButtonPadding.PaddingAll12,
                          fontStyle: ButtonFontStyle.LatoMedium16),
                      Padding(
                          padding: getPadding(top: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(112.00),
                                    margin: getMargin(top: 6, bottom: 9),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.indigo50)),
                                Text("lbl_or_login_with".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtLatoRegular14Gray60001
                                        .copyWith(
                                            height: getVerticalSize(1.25))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(111.00),
                                    margin: getMargin(top: 6, bottom: 9),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.indigo50))
                              ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.gray200,
                                            width: getHorizontalSize(1.00)),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: getVerticalSize(56.00),
                                        width: getHorizontalSize(168.00),
                                        padding:
                                            getPadding(top: 15, bottom: 15),
                                        decoration: AppDecoration.outlineGray200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgFacebook,
                                              height: getSize(26.00),
                                              width: getSize(26.00),
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgFacebook();
                                              })
                                        ]))),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.gray200,
                                            width: getHorizontalSize(1.00)),
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Container(
                                        height: getVerticalSize(56.00),
                                        width: getHorizontalSize(168.00),
                                        padding:
                                            getPadding(top: 15, bottom: 15),
                                        decoration: AppDecoration.outlineGray200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgGoogle,
                                              height: getSize(26.00),
                                              width: getSize(26.00),
                                              alignment: Alignment.center,
                                              onTap: () {
                                                onTapImgGoogle();
                                              })
                                        ])))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 43, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_don_t_have_an".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(1.25))),
                                    TextSpan(
                                        text: "lbl_account".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(1.25))),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(1.25))),
                                    TextSpan(
                                        text: "lbl_register_now".tr,
                                        style: TextStyle(
                                            color: ColorConstant.indigoA200,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w600,
                                            height: getVerticalSize(1.23)))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
