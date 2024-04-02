import 'package:food_delivery/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../data/menuResponse.dart';

class HomeController extends GetxController {
  Rx<Menu> menu= Menu().obs;
  RxBool explore=true.obs;
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

  onExplore(){
    explore.value=!explore.value;
    update();
  }

  navigateToDetailsPage(dynamic restaurantDetails){
    Get.toNamed(Routes.RESTAURANT_DETAILS,arguments: restaurantDetails);
  }
  
}
