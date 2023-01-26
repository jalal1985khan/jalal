import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/presentation/main_landing_screen/models/main_landing_model.dart';
import 'package:flutter/material.dart';

class MainLandingController extends GetxController {
  TextEditingController groupThreeController = TextEditingController();

  Rx<MainLandingModel> mainLandingModelObj = MainLandingModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThreeController.dispose();
  }
}
