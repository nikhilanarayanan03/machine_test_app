import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:machine_test_app/screen/dashboard/dashboard_binding.dart';
import 'package:machine_test_app/screen/home_screen/home_page.dart';
import 'package:machine_test_app/screen/home_screen/home_binding.dart';
import '../screen/dashboard/dashboard.dart';
import '../screen/edit_store/edit_store.dart';
import '../screen/edit_store/edit_store_binding.dart';
import '../screen/stamp_details/stamp_details.dart';
import '../screen/stamp_details/stamp_details_binding.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.dashboard,
      page: () => DashbordPageView(),
      binding: DashbordPageBinding(),
    ),
    GetPage(
      name: Routes.homePage,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.stampDetails,
      page: () => StampDetails(),
      binding: StampBinding(),
    ),
    GetPage(
      name: Routes.editStore,
      page: () => ProfileEdit(),
      binding: ProfileEditBinding(),
    ),
  ];
}
