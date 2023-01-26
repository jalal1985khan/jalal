import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  TextEditingController group5624Controller = TextEditingController();

  TextEditingController group5625Controller = TextEditingController();

  TextEditingController group5628Controller = TextEditingController();

  TextEditingController group5627Controller = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group5624Controller.dispose();
    group5625Controller.dispose();
    group5628Controller.dispose();
    group5627Controller.dispose();
  }
}
