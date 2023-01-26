import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/widgets/custom_button.dart';
import 'package:jalal_s_application1/widgets/custom_text_form_field.dart';
import 'package:jalal_s_application1/domain/facebookauth/facebook_auth_helper.dart';
import 'package:jalal_s_application1/domain/googleauth/google_auth_helper.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(left: 15, top: 98, right: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_hello_register".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtLatoBold24.copyWith(
                              letterSpacing: getHorizontalSize(0.72),
                              height: getVerticalSize(1.22))),
                      CustomTextFormField(
                          width: 358,
                          focusNode: FocusNode(),
                          controller: controller.group5624Controller,
                          hintText: "lbl_first_name".tr,
                          margin: getMargin(left: 1, top: 40)),
                      CustomTextFormField(
                          width: 358,
                          focusNode: FocusNode(),
                          controller: controller.group5625Controller,
                          hintText: "lbl_last_name".tr,
                          margin: getMargin(left: 1, top: 12)),
                      CustomTextFormField(
                          width: 358,
                          focusNode: FocusNode(),
                          controller: controller.group5628Controller,
                          hintText: "lbl_email".tr,
                          margin: getMargin(left: 1, top: 12),
                          textInputType: TextInputType.emailAddress),
                      CustomTextFormField(
                          width: 358,
                          focusNode: FocusNode(),
                          controller: controller.group5627Controller,
                          hintText: "lbl_password".tr,
                          margin: getMargin(left: 1, top: 12),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          isObscureText: true),
                      CustomButton(
                          height: 48,
                          width: 358,
                          text: "lbl_register".tr,
                          margin: getMargin(left: 1, top: 24),
                          padding: ButtonPadding.PaddingAll12,
                          fontStyle: ButtonFontStyle.LatoMedium16),
                      Padding(
                          padding: getPadding(left: 1, top: 41),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(112.00),
                                    margin: getMargin(top: 6, bottom: 9),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.indigo50)),
                                Padding(
                                    padding: getPadding(left: 15),
                                    child: Text("lbl_or_login_with".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtLatoRegular14Gray60001
                                            .copyWith(
                                                height:
                                                    getVerticalSize(1.25)))),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(111.00),
                                    margin:
                                        getMargin(left: 37, top: 6, bottom: 9),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.indigo50))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 18, right: 1),
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
                                        text: "msg_already_have_an2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(1.25))),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: getVerticalSize(1.25))),
                                    TextSpan(
                                        text: "lbl_login_now".tr,
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
