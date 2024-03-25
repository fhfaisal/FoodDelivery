import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class EmailSignUpController extends GetxController {
  final name=TextEditingController().obs;
  final email=TextEditingController().obs;
  final password=TextEditingController().obs;
  final obscureText = true.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  navigateToLogin(){
    Get.toNamed(Routes.EMAIL_LOGIN);
  }
}
