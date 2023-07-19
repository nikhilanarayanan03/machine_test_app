import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashBoardController extends GetxController {
  static DashBoardController get to => Get.find();

  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  List<PersistentBottomNavBarItem> bottomNavItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.search),
        title: ("さがす"),
        textStyle: GoogleFonts.notoSans(
          textStyle: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.normal,
          ),
        ),
        activeColorPrimary: const Color.fromRGBO(250, 170, 20, 1),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.work_outline_sharp),
        title: ("お仕事"),
        textStyle: GoogleFonts.notoSans(
          textStyle: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.normal,
          ),
        ),
        activeColorPrimary: const Color.fromRGBO(250, 170, 20, 1),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.qrcode_viewfinder,
          color: Colors.white,
          size: 40,
        ),
        title: ("打刻する"),
        textStyle: GoogleFonts.notoSans(
          textStyle: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.normal,
          ),
        ),
        activeColorPrimary: const Color.fromRGBO(250, 170, 20, 1),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.chat_bubble),
        title: ("チャット"),
        textStyle: GoogleFonts.notoSans(
          textStyle: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.normal,
          ),
        ),
        activeColorPrimary: const Color.fromRGBO(250, 170, 20, 1),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.person_outline,
        ),
        title: ("マイページ"),
        textStyle: GoogleFonts.notoSans(
          textStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.normal,
          ),
        ),
        activeColorPrimary: const Color.fromRGBO(250, 170, 20, 1),
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }
}
