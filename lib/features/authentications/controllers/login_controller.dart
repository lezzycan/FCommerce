import 'package:get/get.dart';
import 'package:my_eccommerce/features/authentications/screens/signup/signup_screen.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  void navigateToSignUp() {
    Get.to(() => const SignUpScreen());
  }
}
