import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/email_sign_up_controller.dart';

class EmailSignUpView extends GetView<EmailSignUpController> {
  const EmailSignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EmailSignUpView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EmailSignUpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
