import 'package:get/get.dart';
import 'dart:async';
import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  final height = 320.0.obs;
  final width = 320.0.obs;
  late RxBool selected = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    Timer(const Duration(milliseconds: 500), () {
      selected=true.obs;
      update();
    },);
    loadTime();
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

  Future<Timer> loadTime() async {
    return  Timer(const Duration(milliseconds: 2300), onDoneLoading);
  }

  onDoneLoading() async {
    // if(isOnBoardingDone.value){
    //   //without login
    //   //navigateToLoginScreen();
    //   navigateToHomeScreen();
    // } else{
    //   navigateToOnBoardingScreen();
    // }
    // navigateToHome();
    navigateToOnBoarding();
  }

  navigateToHome() {
    Get.offAllNamed(Routes.HOME);
  }
  navigateToOnBoarding() {
    Get.offAllNamed(Routes.ON_BOARDING);
  }

}
