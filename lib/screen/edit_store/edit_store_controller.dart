import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class ProfileEditViewModel extends GetxController {
  static ProfileEditViewModel get to => Get.find();

  var checkValue1 = 0.obs;
  var checkValue2 = 0.obs;
  var checkValue3 = 0.obs;

  List image1 = [
    {"image": "assets/images/image1.png"},
    {"image": "assets/images/image1.png"},
    {"image": "assets/images/addImg.png"},
  ];
  List image2 = [
    {"image": "assets/images/image2.png"},
    {"image": "assets/images/image2.png"},
    {"image": "assets/images/image2.png"},
  ];
  List image3 = [
    {"image": "assets/images/image3.png"},
    {"image": "assets/images/image3.png"},
    {"image": "assets/images/image3.png"},
  ];
  List image4 = [
    {"image": "assets/images/image4.png"},
    {"image": "assets/images/image4.png"},
    {"image": "assets/images/image4.png"},
  ];
  List image5 = [
    {"image": "assets/images/image7.png"},
    {"image": "assets/images/image8.png"},
    {"image": "assets/images/image9.png"},
  ];

  void onCheckValue1() {
    if (checkValue1.value == 0) {
      checkValue1.value = 1;
    } else {
      checkValue1.value = 0;
    }
  }

  void onCheckValue2() {
    if (checkValue2.value == 0) {
      checkValue2.value = 1;
    } else {
      checkValue2.value = 0;
    }
  }

  void onCheckValue3() {
    if (checkValue3.value == 0) {
      checkValue3.value = 1;
    } else {
      checkValue3.value = 0;
    }
    //notifyListeners();
  }
}
