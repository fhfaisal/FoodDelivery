import 'package:get/get.dart';

import '../controllers/email_sign_up_controller.dart';

class EmailSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmailSignUpController>(
      () => EmailSignUpController(),
    );
  }
}
