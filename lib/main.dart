import 'package:flutter/material.dart';
import 'package:food_delivery/utils/text_style.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          // displayLarge: onBoardingTitle(),
          // titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          // bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      )),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
