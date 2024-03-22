import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashScreenView'),
        centerTitle: true,
      ),
      body: Obx(() => Container(
        color: Colors.white,
        child: Center(
          child: Image.asset("assets/images/splash/appName.png",height: controller.height.value,width:controller.width.value,),
        ),
      ),
      ),
    );
  }
}
