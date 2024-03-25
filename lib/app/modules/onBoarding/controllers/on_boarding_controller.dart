import 'package:flutter/cupertino.dart';
import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../model/content_model.dart';

class OnBoardingController extends GetxController {
  RxInt currentIndex = 0.obs;
  late PageController pageController;


  final count = 0.obs;
  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
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
  onBoardingComplete(){
    if(currentIndex.value == contents.length - 1){
      // navigateToHome();
      navigateToLogin();
    }else{
      pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut);
    }
  }

  navigateToHome(){
    Get.offAndToNamed(Routes.HOME);
  }
  navigateToLogin(){
    Get.offAndToNamed(Routes.EMAIL_LOGIN);
  }
}
