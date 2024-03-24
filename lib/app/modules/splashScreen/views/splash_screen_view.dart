import 'package:flutter/material.dart';
import 'package:food_delivery/utils/image_path/splash_img.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => AnimatedContainer(
            duration: Duration(seconds: 2),
            curve: Curves.easeIn,
            // width: controller.selected.value? 200:100,
            // height: controller.selected.value? 100:200,
            // color: controller.selected.value?Colors.red:Colors.blue,
            // alignment: controller.selected.value?Alignment.center:AlignmentDirectional.topCenter,
            child: Container(
              child: Center(
                child: Image.asset(
                  SplashImg.appName,
                  width: controller.width.value,
                  height: controller.height.value,
                ),
              ),
            ),
          ),)

        ],
      ),
    );
  }
}
