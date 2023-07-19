import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_app/screen/home_screen/home_controller.dart';
import 'package:machine_test_app/screen/home_screen/more.dart';
import '../../utils/app_routes.dart';
import '../../utils/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          padding: const EdgeInsets.all(10),
          height: 40,
          width: Get.width,
          decoration: BoxDecoration(
              color: ColorAdd.whiteShade,
              borderRadius: BorderRadius.circular(16.5)),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "北海道, 札幌市",
                hintStyle: GoogleFonts.notoSans(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                border: InputBorder.none),
          ),
        ),
        actions: [
          const SizedBox(
            width: 13,
          ),
          Image.asset(
            "assets/icons/filter.png",
            width: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            "assets/icons/like.png",
            width: 30,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(Get.height / 15),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: Get.height / 16,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [ColorAdd.yellowDark, ColorAdd.yellowLight],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
            child: Center(
              child: Text(
                "2022年 5月 26日（木)",
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.notoSans(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            context.mediaQuerySize.width < 392
                ? SizedBox(
                    height: 100,
                    width: Get.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 67,
                                width: 44,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: const Color.fromRGBO(250, 170, 20, 1),
                                ),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "木",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                    Text(
                                      "26",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 67,
                                width: 44,
                                padding: const EdgeInsets.all(10),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "金",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                    Text(
                                      "27",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 67,
                                width: 44,
                                padding: const EdgeInsets.all(10),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "土",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                    Text(
                                      "28",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 67,
                                width: 44,
                                padding: const EdgeInsets.all(10),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "日",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                    Text(
                                      "29",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 67,
                                width: 44,
                                padding: const EdgeInsets.all(10),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "月",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                    Text(
                                      "30",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 67,
                                width: 44,
                                padding: const EdgeInsets.all(10),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "火",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                    Text(
                                      "31",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 67,
                                width: 44,
                                padding: const EdgeInsets.all(10),
                                child: const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "水",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Noto Sans JP"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 24, top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 67,
                          width: 44,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color.fromRGBO(250, 170, 20, 1),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "木",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                              Text(
                                "26",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 67,
                          width: 44,
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "金",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                              Text(
                                "27",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 67,
                          width: 44,
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "土",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                              Text(
                                "28",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 67,
                          width: 44,
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "日",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                              Text(
                                "29",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 67,
                          width: 44,
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "月",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                              Text(
                                "30",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 67,
                          width: 44,
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "火",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                              Text(
                                "31",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 67,
                          width: 44,
                          padding: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "水",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Noto Sans JP"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            Column(
                children: controller.image.map((item) {
              return Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 12),
                child: InkWell(
                    onTap: () {
                      Get.toNamed(Routes.stampDetails);
                    },
                    child: ImageContainer(item["image"])),
              );
            }).toList()),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(
            Icons.location_on_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}
