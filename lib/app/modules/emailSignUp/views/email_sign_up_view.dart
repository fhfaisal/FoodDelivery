import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/button/primary_button.dart';
import '../../../../utils/color.dart';
import '../../../../utils/gradiant_text.dart';
import '../../../../utils/image_path/common_img.dart';
import '../../../../utils/image_path/other_utils.dart';
import '../../../../utils/image_path/splash_img.dart';
import '../../../../utils/input/custom_input.dart';
import '../../../../utils/static_data.dart';
import '../controllers/email_sign_up_controller.dart';

class EmailSignUpView extends GetView<EmailSignUpController> {
  const EmailSignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('EmailSignUpView'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.sizeOf(context).height / 3,
                width: MediaQuery.sizeOf(context).width,
                child: Stack(
                  children: [
                    Image(image: const AssetImage(SplashImg.pattern), fit: BoxFit.cover, width: MediaQuery.sizeOf(context).width),
                    Positioned(
                        top: MediaQuery.sizeOf(context).height / 12,
                        left: 0,
                        right: 0,
                        child: Image(
                          image: const AssetImage(SplashImg.logo),
                          fit: BoxFit.fitHeight,
                          height: MediaQuery.sizeOf(context).height / 8,
                        )),
                    Positioned(
                        top: MediaQuery.sizeOf(context).height / 5,
                        left: 0,
                        right: 0,
                        child: Image(
                          image: const AssetImage(SplashImg.appName),
                          fit: BoxFit.fitHeight,
                          height: MediaQuery.sizeOf(context).height / 15,
                        )),
                  ],
                )),
            CustomHeight,
            Container(
              margin: fixMargin(),
              child: Column(
                children: [
                  Text('Sign Up For Free',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold, color: Color(0xff09051C))),
                  CustomHeight,
                  CustomInputForm(
                    isPrefixIcon: true,
                    icon: const Icon(Icons.person),
                    controller: controller.email.value,
                    labelText: 'Email',
                  ),
                  const SizedBox(height: 5),
                  Obx(
                    () => TextFormField(
                      obscureText: controller.obscureText.value,
                      controller: controller.password.value,
                      cursorColor: AppColor.primary,
                      decoration: InputDecoration(
                        prefixIcon: ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (Rect bounds) => const RadialGradient(
                                  center: Alignment.topCenter,
                                  stops: [4, 0.1],
                                  colors: [
                                    AppColor.linear1,
                                    AppColor.linear2,
                                  ],
                                ).createShader(bounds),
                            child: const Icon(Icons.lock)),
                        suffixIcon: controller.obscureText.value
                            ? GestureDetector(
                                onTap: () => controller.obscureText.value = false,
                                child: ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (Rect bounds) => const RadialGradient(
                                          center: Alignment.topCenter,
                                          stops: [4, 0.1],
                                          colors: [
                                            AppColor.linear1,
                                            AppColor.linear2,
                                          ],
                                        ).createShader(bounds),
                                    child: const Icon(Icons.visibility)),
                              )
                            : GestureDetector(
                                onTap: () => controller.obscureText.value = true,
                                child: ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (Rect bounds) => const RadialGradient(
                                          center: Alignment.topCenter,
                                          stops: [4, 0.1],
                                          colors: [
                                            AppColor.linear1,
                                            AppColor.linear2,
                                          ],
                                        ).createShader(bounds),
                                    child: const Icon(Icons.visibility_off)),
                              ),
                        labelText: 'Password',
                        labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(color: AppColor.primary),
                        contentPadding: const EdgeInsets.fromLTRB(25, 15, 15, 15),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                            color: AppColor.gray,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: AppColor.primary, width: 2)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: AppColor.gray.withOpacity(0.4), width: 1.5)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  PrimaryButton(controller: controller, text: 'Create Account', onTap: () => null),
                  CustomHeight,
                  Text(
                    'Or Continue With',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  CustomHeight,
                  Container(
                    margin: fixMargin(),
                    child: Row(
                      children: [
                        Flexible(
                            child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15), border: Border.all(color: AppColor.gray.withOpacity(0.3))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Image(
                                image: AssetImage(CommonImg.facebook),
                                height: 35,
                              ),
                              Text(
                                'Facebook',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ],
                          ),
                        )),
                        const SizedBox(width: 20),
                        Flexible(
                            child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15), border: Border.all(color: AppColor.gray.withOpacity(0.3))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Image(
                                image: AssetImage(CommonImg.google),
                                height: 35,
                              ),
                              Text(
                                'Google',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomHeight,
            GestureDetector(
              onTap: () => controller.navigateToLogin(),
              child: GradientText(
                "Already have an account?",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                gradient: const LinearGradient(colors: [
                  AppColor.linear1,
                  AppColor.linear2,
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
