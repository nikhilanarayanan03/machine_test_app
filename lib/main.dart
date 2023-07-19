import 'package:flutter/material.dart';
import 'package:flutter_custom_utils/flutter_custom_utils.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:machine_test_app/utils/app_pages.dart';
import 'package:machine_test_app/utils/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MachineTestApp',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.dashboard,
      defaultTransition: Transition.noTransition,
      builder: EasyLoading.init(
        builder: (context, child) {
          EasyLoading.init();
          return MediaQuery(
            data: mQuery(context).copyWith(
              textScaleFactor: context.cIsTablet ? 1.0 : 0.8,
            ),
            child: child ?? const Text('error'),
          );
        },
      ),
      getPages: AppPages.pages,
    );
  }
}