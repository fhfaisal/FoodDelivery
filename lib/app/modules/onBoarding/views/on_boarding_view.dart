import 'package:flutter/material.dart';
import 'package:food_delivery/utils/color.dart';
import 'package:food_delivery/utils/image_path/other_utils.dart';
import 'package:food_delivery/utils/image_path/splash_img.dart';
import 'package:food_delivery/utils/text_style.dart';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../../utils/button/button_text_style.dart';
import '../../../../utils/button/primary_button.dart';
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          contents[i].image,
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.contain,
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.20),
                          child: Column(
                            children: [
                              Text(contents[i].title,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(fontWeight: FontWeight.bold, fontSize: 24)),
                              Text(contents[i].body, textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleSmall!),
                            ],
                          ),
                        ),
                        const Spacer()
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

              PrimaryButton(
                controller: controller,
                onTap: () => controller.onBoardingComplete(),
                text: controller.currentIndex.value == contents.length - 1 ? "Continue" : "Next",
              ),
              CustomHeight,
            ],
          ),
        ),
      ),
    );
  }
}
