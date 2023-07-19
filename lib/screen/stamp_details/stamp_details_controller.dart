import 'package:get/get.dart';

class StampDetailsController extends GetxController {
  static StampDetailsController get to => Get.find();
  List details = [
    {"date": "2021 / 11 / 18", "list": "スタンプを獲得しました。", "count": "1 個"},
    {"date": "2021 / 11 / 17", "list": "スタンプを獲得しました。", "count": "1 個"},
    {"date": "2021 / 11 / 16", "list": "スタンプを獲得しました。", "count": "1 個"},
    {"date": "2021 / 11 / 13", "list": "スタンプを獲得しました。", "count": "1 個"},
    {"date": "2021 / 11 / 12", "list": "スタンプを獲得しました。", "count": "1 個"},
  ];
}
