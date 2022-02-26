import 'package:get/get.dart';

class SampleController extends GetxController {
  final downloadUrl = ''.obs;
  final isLoading = true.obs;

  Future<String> downloadURLExample() async {
    // function dari firebase
    // delay berfungsi sebagai mock untuk nampilin loading
    await Future.delayed(const Duration(seconds: 3));
    return 'https://www.ilmubahasainggris.com/wp-content/uploads/2017/03/NGC.jpg';
  }

  @override
  void onInit() {
    downloadURLExample().then((value){
      isLoading.value = false;
      downloadUrl.value = value;
    });
    super.onInit();
  }
}
