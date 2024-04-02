import 'package:flutter/cupertino.dart';
import 'package:food_delivery/app/modules/home/model/restaurant.dart';
import 'package:get/get.dart';

class RestaurantDetailsController extends GetxController {

  final restaurantDetails= Get.arguments as Restaurant;
  @override
  void onInit() {
   restaurantDetails;
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

}
