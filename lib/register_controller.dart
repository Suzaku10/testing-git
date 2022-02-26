import 'package:get/get.dart';
import 'package:testing_git/controller/sample_controller.dart';

class RegisterController {
  static void doRegister() {
    Get.put(SampleController());
  }
}