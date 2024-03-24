import 'package:flutter/material.dart';
import 'package:food_delivery/utils/image_path/splash_img.dart';
import 'package:food_delivery/utils/text_style.dart';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../../utils/button/button_text_style.dart';
import '../../../../utils/static_data.dart';
import '../controllers/on_boarding_controller.dart';
import '../model/content_model.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller.pageController,
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    controller.currentIndex.value = index;
                  },
                  itemBuilder: (_, i) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: MediaQuery.of(context).size.height/2,
                          width: double.infinity,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.20),
                          child: Column(
                            children: [
                              Text(
                                contents[i].title,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold,fontSize: 24)
                              ),
                              SizedBox(height: MediaQuery.sizeOf(context).height/80),
                              Text(
                                contents[i].body,
                                textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.titleSmall!
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: List.generate(
              //       contents.length,
              //           (index) => buildDot(index, context, controller),
              //     ),
              //   ),
              // ),
              PrimaryButton(controller: controller,
                onTap:() {
                  controller.pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut);
                },
                text: Text(
                  controller.currentIndex.value == contents.length - 1
                      ? "Continue"
                      : "Next",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/15,)
            ],
          ),
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.controller,
    required this.text,
    required this.onTap,
  });

  final controller;
  final Widget text;
  final Callback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.transparent,
        elevation: 4,
        child: Container(
          height: MediaQuery.of(context).size.height/18,
          width: MediaQuery.of(context).size.width/3,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
               begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [
                  0.1,
                  1
                ],
                colors: [
                  Color(0xff53E88B),
                  Color(0xff15BE77),
                ])
          ),
          child: text,
        ),
      ),
    );
  }
}
