import 'package:get/get.dart';

import 'edit_store_controller.dart';

class ProfileEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileEditViewModel>(
      () => ProfileEditViewModel(),
    );
  }
}
