import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_git/controller/sample_controller.dart';

class SamplePage extends GetView<SampleController> {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const CircularProgressIndicator();
          } else {
            if (controller.downloadUrl.isEmpty) {
              return const SizedBox();
            } else {
              return SizedBox(
                width: Get.width / 1.2,
                height: Get.width / 1.2,
                child: Image.network(
                  controller.downloadUrl.value,
                  height: 50,
                  width: 50,
                ),
              );
            }
          }
        }),
      ),
    );
  }
}
