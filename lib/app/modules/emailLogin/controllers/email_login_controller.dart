import 'package:flutter/cupertino.dart';
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

  void increment() => count.value++;
}
