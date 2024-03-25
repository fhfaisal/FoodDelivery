import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/button/primary_button.dart';
import '../../../../utils/color.dart';
import '../../../../utils/image_path/other_utils.dart';
import '../../../../utils/image_path/splash_img.dart';
import '../../../../utils/input/custom_input.dart';
import '../../../../utils/static_data.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('ForgotPasswordView'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.sizeOf(context).height / 3,
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: const BoxDecoration(
                  image: DecorationImage(image:AssetImage(SplashImg.pattern), fit: BoxFit.cover,)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forgot Password?',
                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold,color: AppColor.blackText)),
                    CustomHeight,
                    Text('Select which contact details should we use to reset your password',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColor.blackText)),
                    CustomHeight,

                  ],
                )),
            CustomHeight,
            Container(
              margin: fixMargin(),
              child: Column(
                children: [
                  CustomInputForm(
                    onTap: () => null,

                    isPrefixIcon: true,
                    icon: const Icon(Icons.email),
                    controller: controller.email.value,
                    labelText: 'Via Email:',
                    hintText: 'Enter you mail address',
                  ),
                  const SizedBox(height: 10),
                  PrimaryButton(
                    controller: controller,
                    text: 'Next',
                    onTap: () => null,
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
