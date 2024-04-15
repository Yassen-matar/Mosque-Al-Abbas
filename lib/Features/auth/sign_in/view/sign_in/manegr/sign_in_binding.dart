import 'package:get/get.dart';
import 'package:mosque/Features/auth/sign_in/view/sign_in/manegr/sign_in_controller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SignInController());
  }
}
