import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test_app/screen/home_screen/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'dashboard_controller.dart';

class DashbordPageView extends StatefulWidget {
  DashbordPageView({Key? key}) : super(key: key);

  @override
  State<DashbordPageView> createState() => _DashbordPageViewState();
}

class _DashbordPageViewState extends State<DashbordPageView> {
  final controller = Get.find<DashBoardController>();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller.controller,
      screens: [
        HomePage(),
        const Center(
          child: Text(
            'Page 2',
            style: TextStyle(color: Colors.black),
          ),
        ),
        const Center(
          child: Text(
            'Page 3',
            style: TextStyle(color: Colors.black),
          ),
        ),
        const Center(
          child: Text(
            'Page 4',
            style: TextStyle(color: Colors.black),
          ),
        ),
        const Center(
          child: Text(
            'Page 5',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
      items: controller.bottomNavItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,

      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
