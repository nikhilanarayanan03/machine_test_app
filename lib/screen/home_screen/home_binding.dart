import 'package:get/get.dart';
import 'package:machine_test_app/screen/home_screen/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
  }
}
