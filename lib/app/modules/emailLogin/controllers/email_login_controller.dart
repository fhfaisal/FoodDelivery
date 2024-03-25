import 'package:flutter/cupertino.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:get/get.dart';

class EmailLoginController extends GetxController {
  final email=TextEditingController().obs;
  final password=TextEditingController().obs;

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

  navigateToSignUp(){
    Get.toNamed(Routes.EMAIL_SIGN_UP);
  }
  navigateHome(){
    Get.offAndToNamed(Routes.HOME);
  }
  navigateToForgot(){
    Get.toNamed(Routes.FORGOT_PASSWORD);
  }
}
