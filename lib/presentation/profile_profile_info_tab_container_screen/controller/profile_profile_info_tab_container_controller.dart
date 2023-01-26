import 'package:jalal_s_application1/core/app_export.dart';
import 'package:jalal_s_application1/presentation/profile_profile_info_tab_container_screen/models/profile_profile_info_tab_container_model.dart';
import 'package:flutter/material.dart';

class ProfileProfileInfoTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ProfileProfileInfoTabContainerModel>
      profileProfileInfoTabContainerModelObj =
      ProfileProfileInfoTabContainerModel().obs;

  late TabController group5706Controller =
      Get.put(TabController(vsync: this, length: 5));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
