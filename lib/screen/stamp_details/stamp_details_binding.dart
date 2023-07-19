import 'package:get/get.dart';
import 'package:machine_test_app/screen/stamp_details/stamp_details_controller.dart';

class StampBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StampDetailsController>(
      () => StampDetailsController(),
    );
  }
}
