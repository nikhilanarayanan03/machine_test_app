import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machine_test_app/utils/size_configuration.dart';
import '../../utils/app_routes.dart';
import 'more/more_widgets.dart';
import 'stamp_details_controller.dart';

class StampDetails extends StatelessWidget {
  StampDetails({Key? key}) : super(key: key);
  final controller = Get.find<StampDetailsController>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: const Color.fromRGBO(168, 177, 255, 1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(168, 177, 255, 1),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: CircleAvatar(
              radius: 12,
              backgroundColor: const Color.fromRGBO(148, 158, 255, 1),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 20,
              ).paddingOnly(left: 6),
            ).paddingOnly(top: 5, left: 10),
          ),
          title: Text(
            "スタンプカード詳細",
            style: GoogleFonts.notoSans(
              textStyle: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          actions: [
            const Icon(Icons.remove_circle_outline_outlined,
                    color: Colors.white, size: 40)
                .paddingOnly(right: 10)
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(Get.height / 15),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: Get.height / 16,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(168, 177, 255, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mer キッチン",
                    style: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '現在の獲得数 ',
                      style: GoogleFonts.notoSans(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '30 ',
                          style: GoogleFonts.notoSans(
                            textStyle: const TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: '個',
                          style: GoogleFonts.notoSans(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: Get.height,
              width: Get.width,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.editStore);
                    },
                    child: SizedBox(
                      height: SizeConfig.blockSizeVertical! * 21,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          StarWidget(),
                          StarWidget(),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "2 / 2枚目",
                          style: GoogleFonts.notoSans(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "スタンプ獲得履歴",
                    style: GoogleFonts.notoSans(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemCount: controller.details.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Divider(),
                            ),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListItems(
                                date: controller.details[index]['date'],
                                list: controller.details[index]['list'],
                                count: controller.details[index]['count'],
                              ),
                              if (index == controller.details.length - 1)
                                const SizedBox(
                                  height: 150,
                                )
                            ],
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
