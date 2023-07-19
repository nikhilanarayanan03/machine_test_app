import 'package:get/get.dart';
import 'package:machine_test_app/screen/home_screen/home_controller.dart';
import '../edit_store/edit_store_controller.dart';
import '../stamp_details/stamp_details_controller.dart';
import 'dashboard_controller.dart';

class DashbordPageBinding extends Bindings {
  @override
  void dependencies() {
    [
      Get.lazyPut<DashBoardController>(
        () => DashBoardController(),
      ),
      Get.lazyPut<HomePageController>(
        () => HomePageController(),
      ),
      Get.lazyPut<StampDetailsController>(
        () => StampDetailsController(),
      ),
      Get.lazyPut<ProfileEditViewModel>(
        () => ProfileEditViewModel(),
      ),
    ];
  }
}
